require_relative "../Modules/stepable.rb"
require_relative "piece"

class King < Piece
    include Stepable

    attr_reader :color, :pos, :symbol

    def initialize(color, board, position)
        super
        # @pos = [0, 0]
    end 

    def symbol 
        if color == :white 
            '♔'
        else 
            '♚'
        end 
    end 

    def move_diffs
        return KING_MOVES
    end
end

# k1 = King.new 
# p k1.moves
