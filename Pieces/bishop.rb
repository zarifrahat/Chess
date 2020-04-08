require_relative "../Modules/slideable.rb"
require_relative "piece"

class Bishop < Piece
    include Slideable

    attr_reader :color, :pos, :symbol

    def initialize(color, board, position)
        super
    end 

    def symbol 
       if color == :white 
            '♗'
       else 
            '♝'
       end 
    end 

    def move_dirs
        return DIAGONAL_DIRS
    end

end
