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
        moves.select {|each| each[0].between?(1,8) && each[1].between?(1,8)}
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
        moves.select {|each| each[0].between?(1,8) && each[1].between?(1,8)}
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
        moves.select {|each| each[0].between?(1,8) && each[1].between?(1,8)}
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
        moves.select {|each| each[0].between?(1,8) && each[1].between?(1,8)}
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
        moves.select {|each| each[0].between?(1,8) && each[1].between?(1,8)}
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
            [1,0], [-1,0], [1,-1], [1,1], [-1,-1], [-1,1]
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
        moves.select {|each| each[0].between?(1,8) && each[1].between?(1,8)}
    end
end
