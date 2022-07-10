require 'pry'
require_relative 'Piece'

class Pawn < Piece

    def possible_moves(board)
        x = @position[0]
        y = @position[1]
        moves = [] 
        if @color == "black"
            moves.push([x + 1, y]) if board.is_valid_move?([x+1, y])
            moves.push([x + 1, y + 1]) if is_inbounds?(x+1, y+1, board.board) && !board.board[x+1][y+1].nil? && board.board[x+1][y+1].color == "white"
            moves.push([x + 1, y - 1]) if is_inbounds?(x+1, y-1, board.board) && !board.board[x+1][y-1].nil? && board.board[x+1][y-1].color == "white"
        end
        if @color == "white"
            moves.push([x - 1, y]) if board.is_valid_move?([x- 1, y])
            moves.push([x - 1, y + 1]) if is_inbounds?(x-1, y+1, board.board) && !board.board[x-1][y+1].nil? && board.board[x-1][y+1].color == "black" 
            moves.push([x - 1, y - 1]) if is_inbounds?(x-1, y-1, board.board) && !board.board[x-1][y-1].nil? && board.board[x-1][y-1].color == "black"
        end
        moves
    end

end