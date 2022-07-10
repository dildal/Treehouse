require_relative 'Pawn'
require_relative 'Rook'
require_relative 'Bishop'
require_relative 'Knight'

class Board
    attr_reader :board, :wp1

    def initialize
        bp1 = Pawn.new("black", [0,0], "\u265F")
        bp2 = Pawn.new("black", [0,1], "\u265F")
        bp3 = Pawn.new("black", [0,2], "\u265F")
        bp4 = Pawn.new("black", [0,3], "\u265F")
 
        bk1 = Knight.new("black", [1,1], "\u265C")

        wp1 = Pawn.new("white", [2,0], "\u2659")
        wp2 = Pawn.new("white", [2,1], "\u2659")
        wp3 = Pawn.new("white", [2,2], "\u2659")
        wp4 = Pawn.new("white", [2,3], "\u2659")

        @board = [
            [bp1, bp2, bp3, bp4],
            [nil, bk1, nil, nil],
            [wp1, wp2, wp3, wp4]
        ]
        pp bp1.possible_moves(self)
        
        puts "expect [2,3]"
        pp bk1.possible_moves(self)
    end

    def is_valid_move?(pos)
        x = pos[0]
        y = pos[1]
        return false if x < 0 || x >= @board.length
        return false if y < 0 || y >= @board[0].length
        @board[x][y].nil?
    end

end

board = Board.new
