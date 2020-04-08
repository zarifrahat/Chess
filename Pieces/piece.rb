
class Piece
    attr_reader :color, :board, :position
    # attr_accessor :symbol

    def initialize(color, board, position)
        @color = color
        @board = board
        @pos = position
    end

    def to_s 
        " #{self.symbol} " 

        # return sym??
        # when running puts, call to_s???;; then use colorize???
    end 

    def empty?

    end 

    def valid_moves
        #checks moves into check and rejects them
    end

    def pos=(val)

    end 

    private
    def move_into_check?(end_pos)

    end

end