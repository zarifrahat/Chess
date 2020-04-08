require 'singleton'

class Nullpiece < Piece
    include Singleton

    def initialize
        @color = :red
    end 

    def symbol 
        "_"
    end 

    def moves 

    end 
end     