module Slideable
    attr_reader :HORIZONTAL_DIRS, :DIAGONAL_DIRS

    def moves 
        dx, dy = pos
        grow_unblocked_moves_in_dir(dx, dy)
    end 

    # def horizontal_dirs(pos) 
    #     all_moves = []
    #     x, y = pos 
    #     HORIZONTAL_DIRS.each do |(hx, hy)|
    #         all_moves << new_pos = [(hx + x), (hy + y)]
    #     end
    #     all_moves.select do |move|
    #        (0..7).include?(move[0]) && (0..7).include?(move[1])
    #     end
    # end 

    # def diagonal_dirs(pos) 
    #     all_moves = []
    #     x, y = pos 
    #     DIAGONAL_DIRS.each do |(hx, hy)|
    #         all_moves << new_pos = [(hx + x), (hy + y)]
    #     end
    #     all_moves.select do |move|
    #        (0..7).include?(move[0]) && (0..7).include?(move[1])
    #     end
    # end 

    private 
    HORIZONTAL_DIRS = [
        [0, 1],
        [0, -1],
        [1, 0],
        [-1, 0],
    ]


    DIAGONAL_DIRS = [
        [1, 1],
        [-1, -1],
        [-1, 1],
        [1, -1],
    ]

    # def move_dirs !!!!!!!!!!!!!!!!!!!!!!!!!!
    #     self.move_dirs
# WE WILL COME BACK I PROMISE
    #     #returns peices directional ability
    # end 

    def grow_unblocked_moves_in_dir(dx, dy)
        all_moves = []
        direction_to_use = self.move_dirs 
        direction_to_use.each do |(hx, hy)|
            all_moves << new_pos = [(hx + dx), (hy + dy)]
            7.times do 
                x, y = all_moves.last
                all_moves << [(x + hx), (y + hy)]
            end 
        end
        all_moves.select do |move|
           (0..7).include?(move[0]) && (0..7).include?(move[1])
        end
    end 

end


