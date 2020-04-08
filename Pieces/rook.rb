require_relative "../Modules/slideable.rb"
require_relative "piece"

class Rook < Piece
    include Slideable

    attr_reader :color, :pos, :symbol

    def initialize(color, board, position)
        super
        # @pos = [0,0]
    end 

    def symbol 
       if color == :white 
            '♖'
       else 
            '♜'
       end 
        # '♖'.colorize(color)
    end 

    def move_dirs
        return HORIZONTAL_DIRS
    end

end

# r1 = Rook.new
# p r1.moves
