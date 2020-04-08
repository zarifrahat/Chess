require_relative "../Modules/slideable.rb"
require_relative "piece"

class Queen < Piece
    include Slideable

    attr_reader :color, :pos, :symbol

    def initialize(color, board, position)
        super
    end 

    def symbol 
       if color == :white 
            '♕'
       else 
            '♛'
       end 
    end 

    def move_dirs
        return DIAGONAL_DIRS + HORIZONTAL_DIRS
    end
end

# q = Queen.new
# p q.moves


