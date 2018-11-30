class KnightNode

    attr_accessor :location
    attr_accessor :parent
    attr_accessor :possible_moves

    def initialize(location = [0,0], parent = nil)
        @location = location
        @parent = parent
        # notes the changes front start location
        # i.e. one down, etc
        @possible_moves = [ 
            [1,2], [2,1], [-1,2], [-2,1],
            [1,-2], [2,-1], [-1,-2], [-2,-1]
        ]
        # adds location with moves to determine
        # where the points are on the board 
        @possible_moves =  @possible_moves.select {|move|
            move[0] += location[0]
            move[1] += location[1]
        }
        # possible moves are filterd to fit in
        # 8 by 8 criteria for the board
        @possible_moves = valid_moves(@possible_moves)
    end

    def valid_moves(moves)
        moves.select {|each| each[0].between?(0,7) && each[1].between?(0,7)}
    end
end

class BishopNode

    attr_accessor :location
    attr_accessor :parent
    attr_accessor :possible_moves

    def initialize(location = [0,0], parent = nil)
        @location = location
        @parent = parent
        # notes the changes front start location
        # i.e. one down, etc
        @possible_moves = [ 
            [1,-1],[1,1],
            [-1,-1],[-1,1]
        ]
        # adds location with moves to determine
        # where the points are on the board 
        @possible_moves =  @possible_moves.select {|move|
            move[0] += location[0]
            move[1] += location[1]
        }
        # possible moves are filterd to fit in
        # 8 by 8 criteria for the board
        @possible_moves = valid_moves(@possible_moves)
    end

    def valid_moves(moves)
        moves.select {|each| each[0].between?(0,7) && each[1].between?(0,7)}
    end
end

class RookNode

    attr_accessor :location
    attr_accessor :parent
    attr_accessor :possible_moves

    def initialize(location = [0,0], parent = nil)
        @location = location
        @parent = parent
        # notes the changes front start location
        # i.e. one down, etc
        @possible_moves = [ 
            [1,0],[-1,0],
            [0,-1],[0,1]
        ]
        # adds location with moves to determine
        # where the points are on the board 
        @possible_moves =  @possible_moves.select {|move|
            move[0] += location[0]
            move[1] += location[1]
        }
        # possible moves are filterd to fit in
        # 8 by 8 criteria for the board
        @possible_moves = valid_moves(@possible_moves)
    end

    def valid_moves(moves)
        moves.select {|each| each[0].between?(0,7) && each[1].between?(0,7)}
    end
end

class QueenNode

    attr_accessor :location
    attr_accessor :parent
    attr_accessor :possible_moves

    def initialize(location = [0,0], parent = nil)
        @location = location
        @parent = parent
        # notes the changes front start location
        # i.e. one down, etc
        @possible_moves = [ 
            [1,0],[-1,0],[1,-1],[1,1],
            [0,-1],[0,1],[-1,-1],[-1,1]
        ]
        # adds location with moves to determine
        # where the points are on the board 
        @possible_moves =  @possible_moves.select {|move|
            move[0] += location[0]
            move[1] += location[1]
        }
        # possible moves are filterd to fit in
        # 8 by 8 criteria for the board
        @possible_moves = valid_moves(@possible_moves)
    end

    def valid_moves(moves)
        moves.select {|each| each[0].between?(0,7) && each[1].between?(0,7)}
    end
end

class KingNode

    attr_accessor :location
    attr_accessor :parent
    attr_accessor :possible_moves

    def initialize(location = [0,0], parent = nil)
        @location = location
        @parent = parent
        # notes the changes front start location
        # i.e. one down, etc
        @possible_moves = [ 
            [1,0],[-1,0],[1,-1],[1,1],
            [0,-1],[0,1],[-1,-1],[-1,1]
        ]
        # adds location with moves to determine
        # where the points are on the board 
        @possible_moves =  @possible_moves.select {|move|
            move[0] += location[0]
            move[1] += location[1]
        }
        # possible moves are filterd to fit in
        # 8 by 8 criteria for the board
        @possible_moves = valid_moves(@possible_moves)
    end

    def valid_moves(moves)
        moves.select {|each| each[0].between?(0,7) && each[1].between?(0,7)}
    end
end

class PawnNode

    attr_accessor :location
    attr_accessor :parent
    attr_accessor :possible_moves

    def initialize(location = [0,0], parent = nil)
        @location = location
        @parent = parent
        # notes the changes front start location
        # i.e. one down, etc
        @possible_moves = [ 
            [1,0],[1,-1],[1,1]
        ]
        # adds location with moves to determine
        # where the points are on the board 
        @possible_moves =  @possible_moves.select {|move|
            move[0] += location[0]
            move[1] += location[1]
        }
        # possible moves are filterd to fit in
        # 8 by 8 criteria for the board
        @possible_moves = valid_moves(@possible_moves)
    end

    def valid_moves(moves)
        moves.select {|each| each[0].between?(0,7) && each[1].between?(0,7)}
    end
end

=begin
[5,6][1,2]        [6,3][2,-1]
[6,5][2,1]        [5,2][1,-2]  
            [4,4] 
[3,2][-1,-2]      [2,5][-2,1]
[2,3][-2,-1]      [3,6][-1,2]


[7,0][7,1][7,2][7,3][7,4][7,5][7,6][7,7]
[6,0][6,1][6,2]  X  [6,4]  X  [6,6][6,7]
[5,0][5,1]  X  [5,3][5,4][5,5]  X  [5,7]
[4,0][4,1][4,2][4,3][4,4][4,5][4,6][4,7]
[3,0][3,1]  X  [3,3][3,4][3,5]  X  [3,7]
[2,0][2,1][2,2]  X  [2,4]  X  [2,6][2,7]
[1,0][1,1][1,2][1,3][1,4][1,5][1,6][1,7]
[0,0][0,1][0,2][0,3][0,4][0,5][0,6][0,7]
=end