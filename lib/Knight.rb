require 'pry'

class Knight < Piece

    def possible_moves(board)
        x = @position[0]
        y = @position[1]

        moves = []
        # binding.pry
        if(is_inbounds?(x+2, y+1, board.board))
            moves.push([x+2, y+1]) if board.is_valid_move?([x+2, y+1]) || @color != board.board[x+2][y+1].color
        end
        
        if(is_inbounds?(x+2, y-1, board.board))
            moves.push([x+2, y-1]) if board.is_valid_move?([x+2, y-1]) || @color != board.board[x+2][y-1].color
        end

        if(is_inbounds?(x-2, y+1, board.board))
            moves.push([x-2, y+1]) if board.is_valid_move?([x-2, y+1]) || @color != board.board[x-2][y+1].color
        end
        
        if(is_inbounds?(x-2, y+-1, board.board))
            moves.push([x-2, y-1]) if board.is_valid_move?([x-2, y-1]) || @color != board.board[x-2][y-1].color
        end
        
        if(is_inbounds?(x+1, y+2, board.board))
            moves.push([x+1, y+2]) if board.is_valid_move?([x+1, y+2]) || @color != board.board[x+1][y+2].color
        end
        if(is_inbounds?(x+1, y-2, board.board))
            moves.push([x+1, y-2]) if board.is_valid_move?([x+1, y-2]) || @color != board.board[x+1][y-2].color
        end
        if(is_inbounds?(x-1, y+2, board.board))
            moves.push([x-1, y+2]) if board.is_valid_move?([x-1, y+2]) || @color != board.board[x-1][y+2].color
        end
        if(is_inbounds?(x-1, y-2, board.board))
            moves.push([x-1, y-2]) if board.is_valid_move?([x-1, y-2]) || @color != board.board[x-1][y-2].color
        end
    
        moves
    end

end