class Bishop < Piece

    def possible_moves(board)
        x = @position[0]
        y = @position[1]
        moves = []
        i = 1
        while(board.is_valid_move?([x + i, y + i]))
            moves.push([x+i, y+i])
            i += 1
        end

        moves.push([x+i, y+i]) if is_inbounds?(x+1, y+1, board.board) && @color != board.board[x+i][y+i].color

        i = 1

        while(board.is_valid_move?([x + i, y - i]))
            moves.push([x+i, y-i])
            i += 1
        end

        moves.push([x+i, y-i]) if is_inbounds?(x+1, y-1, board.board) && @color != board.board[x+i][y-i].color
        i = 1
        
        while(board.is_valid_move?([x - i, y + i]))
            moves.push([x-i, y+i])
            i += 1
        end

        moves.push([x-i, y+i]) if is_inbounds?(x-1, y+1, board.board) && @color != board.board[x-i][y+i].color
        i = 1

        while(board.is_valid_move?([x - i, y - i]))
            moves.push([x-i, y-i])
            i += 1
        end

        moves.push([x-i, y-i]) if is_inbounds?(x-1, y-1, board.board) && @color != board.board[x-i][y-i].color
        i = 1

        moves
    end

end