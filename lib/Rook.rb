require 'pry'

class Rook < Piece
    
    def possible_moves(board)
        x = @position[0]
        y = @position[1]
        moves = []
        up = 1
        down = 1
        right = 1
        left = 1
        while(board.is_valid_move?([x + up, y]))
            moves.push([x+up, y])
            up += 1
        end
        while(board.is_valid_move?([x, y + right]))
            moves.push([x, y+right])
            right += 1
        end
        while(board.is_valid_move?([x - down, y]))
            moves.push(down)
            down += 1
        end
        while(board.is_valid_move?([x, y-left]))
            moves.push([x, y-left])
            left += 1
        end
        if !board.board[x+up][y].nil? && is_inbounds?(x+up, y, board.board)
            moves.push([x+up, y]) unless board.board[x+up][y].color == @color
        end
        if !board.board[x-down][y].nil? && is_inbounds?(x-down, y, board.board)
            moves.push([x-down, y]) unless board.board[x-down][y].color == @color
        end
        if !board.board[x][y-left].nil? && is_inbounds?(x, y-left, board.board)
            moves.push([x, y-left]) unless board.board[x][y-left].color == @color
        end
        if !board.board[x][y+right].nil? && is_inbounds?(x, y+right, board.board)
            moves.push([x, y+right]) unless board.board[x][y+right].color == @color
        end
        moves
    end

    # def is_inbounds?(x,y)
    #     x >= 0 && x <= 2 && y >= 0 && y <= 2
    # end
end