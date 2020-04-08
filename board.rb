require_relative "./pieces/piece.rb"
require_relative "./pieces/nullpiece.rb"
require_relative "./pieces/pawn.rb"
require_relative "./pieces/rook.rb"
require_relative "./pieces/knight.rb"
require_relative "./pieces/bishop.rb"
require_relative "./pieces/queen.rb"
require_relative "./pieces/king.rb"

class Board
    attr_reader :grid, :sentinel

    def initialize
        @grid = Array.new(8){Array.new(8, Nullpiece.instance)} 

        self.populate_board
    end

    def [](position)
        row, col = position
        @grid[row][col]
    end
    
    def []=(position, value)
        row, col = position
        @grid[row][col] = value
    end

    def move_piece(color, start_pos, end_pos)

    end 

    def valid_pos?(position)
        row, col = position
        (0..7).include?(row) && (0..7).include?(col)
    end

    def add_piece(piece, pos)
        
    end 

    def checkmate?(color)

    end 

    def in_check?(color)
        king_pos = find_king(color)

    end 

    def find_king(color)
        @grid.each do |row|
            row.each do |ele|
                if ele.is_a?(King) && ele.color == color
                    return ele.pos
                end
            end
        end
    end 

    # def pieces
    #    # used in checkmate/ check
    #     all_pieces = []

    #     @grid.each do |row|
    #         row.each do |ele|
    #             if !ele.is_a?(Nullpiece)
    # end 

    def populate_board
        fill_pawns(:black)
        fill_pawns(:white)
        fill_backrow(:black)
        fill_backrow(:white)
    end 

    def fill_pawns(color)
        if color == :white 
            # bottom
            (0..7).each do |i|
                @grid[6][i] = Pawn.new(color, self, [6,i])
            end
        else 
            # top 
                (0..7).each do |i|
                @grid[1][i] = Pawn.new(color, self, [1,i])
            end
        end    
    end 

    def fill_backrow(color)
        if color == :black 
            @grid[0][0] = Rook.new(color, self, [0,0])
            @grid[0][7] = Rook.new(color, self, [0,7])
            @grid[0][1] = Knight.new(color, self, [0,1])
            @grid[0][6] = Knight.new(color, self, [0,6])
            @grid[0][2] = Bishop.new(color, self, [0,2])
            @grid[0][5] = Bishop.new(color, self, [0,5])
            @grid[0][3] = Queen.new(color, self, [0,3])
            @grid[0][4] = King.new(color, self, [0,4])
        else
            @grid[7][0] = Rook.new(color, self, [7,0])
            @grid[7][7] = Rook.new(color, self, [7,7])
            @grid[7][1] = Knight.new(color, self, [7,1])
            @grid[7][6] = Knight.new(color, self, [7,6])
            @grid[7][2] = Bishop.new(color, self, [7,2])
            @grid[7][5] = Bishop.new(color, self, [7,5])
            @grid[7][3] = Queen.new(color, self, [7,3])
            @grid[7][4] = King.new(color, self, [7,4])
        end

    end

    def dup 

    end 

    def move_piece(start_pos, end_pos)
        if  self[start_pos].is_a?(Nullpiece) || !self.valid_pos?(end_pos)
            raise "Not a valid position!"
        else
            piece = self[start_pos]
            self[start_pos] = Nullpiece.instance
            self[end_pos] = piece
        end
    end

    private 
    @sentinel = Nullpiece.instance

end


# b = Board.new 
# b.move_piece([0,0],[3,3])
#  b.fill_pawns(:black)
# p b