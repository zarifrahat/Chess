require_relative "../Modules/stepable.rb"
require_relative "piece"

class Knight < Piece
    include Stepable

    attr_reader :color, :pos, :symbol

    def initialize(color, board, position)
        super
    end 

    def symbol 
       if color == :white 
            '♘'
       else 
            '♞'
       end 
        # '♘'.colorize(color)
    end 

    def move_diffs
        return KNIGHT_MOVES
    end
end

# k = Knight.new 
# p k.moves