require 'colorize'
# require 'colorized_string'
require_relative  "board.rb"
require_relative "cursor.rb"

class Display 
    attr_reader :cursor, :board

    def initialize(board)
        @board = board 
        @cursor = Cursor.new([0, 0], board)
    end 

    def render 
        board.grid.each_with_index do |row, i|
            printed_row = []
            row.each_with_index do |ele, j|
                if (i + j).odd? 
                    # ele.to_s.colorize(:background => :grey)
                    printed_row << ele.to_s.colorize(:color => :light_blue, :background => :grey)
                else 
                    if [i,j] == @cursor.cursor_pos
                        printed_row << ele.to_s.colorize(:color => :light_blue, :background => :red)
                    else 
                    # ele.to_s.colorize(:background => :white)
                        printed_row << ele.to_s.colorize(:color => :light_blue, :background => :white)
                    end 
                end 
            #    printed_row << ele.to_s.colorize(:color => :light_blue)
            end 
            puts printed_row.join
        end 
        # x,y = 
        # @grid@cursor.cursor_pos.colorize(:background => :red)
        
        # iterates over board & prints out all rows ;; use to_s
        # then colorize diff pieces depending on their symb
        # colorize wherever the cursor is 

        # cursor.colorize(:color => :light_blue, :background => :red)
        #can't colorize bc it's not a str
    end 

    
end 


# p d1

if $PROGRAM_NAME == __FILE__
    d1 = Display.new(Board.new)
    while true 
        d1.render

        # ENDLESS LOOP 
    end 
end 