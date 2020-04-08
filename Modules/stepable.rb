module Stepable 

    def moves 
        dx, dy = pos 

        all_moves = []
        direction_to_use = move_diffs 
        direction_to_use.each do |(hx, hy)|
            all_moves << new_pos = [(hx + dx), (hy + dy)]
        end
        all_moves.select do |move|
           (0..7).include?(move[0]) && (0..7).include?(move[1])
        end
    end 

    # def knight_dirs(pos)
    #     all_moves = []
    #     x, y = pos 
    #     KNIGHT_MOVES.each do |(hx, hy)|
    #         all_moves << new_pos = [(hx + x), (hy + y)]
    #     end
    #     all_moves.select do |move|
    #        (0..7).include?(move[0]) && (0..7).include?(move[1])
    #     end
    # end 

    # def king_dirs(pos)
    #     all_moves = []
    #     x, y = pos 
    #     KING_MOVES.each do |(hx, hy)|
    #         all_moves << new_pos = [(hx + x), (hy + y)]
    #     end
    #     all_moves.select do |move|
    #        (0..7).include?(move[0]) && (0..7).include?(move[1])
    #     end
    # end 

    private
    KNIGHT_MOVES = [
        [-2, -1],
        [-2,  1],
        [-1, -2],
        [-1,  2],
        [ 1, -2],
        [ 1,  2],
        [ 2, -1],
        [ 2,  1]
    ]
    KING_MOVES = [
        [0, 1],
        [1, 1],
        [1, 0],
        [0, -1],
        [-1, -1],
        [-1, 1],
        [1, -1],
        [-1, 0],
    ]

    def move_diffs
        self.move_diffs
        # if self.symbol == :knight
        #     self.knight_dirs(pos)
        # else 
        #     self.king_dirs(pos)
        # end
    end 
end 