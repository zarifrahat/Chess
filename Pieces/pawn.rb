require_relative "piece"
require "byebug"

class Pawn < Piece
    attr_reader :color, :pos, :symbol
    
    def initialize(color, board, position)
        super

        # @pos = [2,6]
        # @color = :black
    end 

    def symbol
        if color == :white 
            '♙'
        else 
            '♟'
        end 
    end

    def move
        forward_steps
    end

    private

    def at_start_row?
        dx, dy = pos
        dx == 1 || dx == 6
    end

    def forward_dir
        if @color == :white
            -1
        else
            1
        end
    end

    def forward_steps
        dx, dy = pos
        if at_start_row?
            [[dx+forward_dir,(dy)],[dx+(forward_dir*2),(dy)]]
        else
            [(dx+forward_dir),(dy)]
        end
    end

    # def side_attacks !!!!!!!!!
    #     dx, dy = pos
    #     if ([dx+1, dy+ forward_dir] ||  [dx-1,dy+forward_dir]) != (&& )
    # end
end 

# p1 = Pawn.new
# p p1.move