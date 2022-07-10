class Piece
    attr_reader :color

    def initialize(color, position, unicode)
        @color = color
        @position = position
        @unicode = unicode
        @dead = false
    end
    
    def move(newPos)
        @position = newPos
    end

    def to_s
        @unicode.encode('utf-8')
    end

    def is_inbounds?(x, y, board)
        x >= 0 && x <= board.length-1 && y >= 0 && y <= board[0].length-1
    end

end

