require './board.rb'
require './Node.rb'

class Knight

    def knight_path(start,target)
        # the starting point is inserted into the Knightnode
        # it creates all the possible moves 
        current = KnightNode.new(start)
        
        queue = []

        # checks if the starting point has moved toward target
        # this is checking breath first
        # checking all the each layer of moves
        # then moving to the next 
        until current.location == target
            current.possible_moves.each {|move| queue << KnightNode.new(move, current)}
            current = queue.shift
        end
        # documents the path thats being taken to get to 
        # the target
        path = [current.location]

        # checks all parents of the target to trace
        # back to the tarting point
        # puts into the path array to document it
        until current.location == start
                path << current.parent.location
                current = current.parent
        end
        # reversing path array so its in 
        # chronological order meaning start to end
        true_path = path.reverse
        true_path
      #  board = Board.new

      #  true_path.each {|n| 
      #      board.knight_move_pos(n) 
      #  }
      #  board.display
    end   
end

class Bishop

    def bishop_path(start,target)
        # the starting point is inserted into the Knightnode
        # it creates all the possible moves 
        current = BishopNode.new(start)
           
        queue = []
   
        # checks if the starting point has moved toward target
        # this is checking breath first
        # checking all the each layer of moves
        # then moving to the next 
        until current.location == target
            current.possible_moves.each {|move| queue << BishopNode.new(move, current)}
            current = queue.shift
        end
        # documents the path thats being taken to get to 
        # the target
        path = [current.location]
  
        # checks all parents of the target to trace
        # back to the tarting point
        # puts into the path array to document it
        until current.location == start
            path << current.parent.location
            current = current.parent
        end
        # reversing path array so its in 
        # chronological order meaning start to end
        true_path = path.reverse
        puts true_path.inspect
        true_path
        board = Board.new
 
        true_path.each {|n| 
            board.bishop_move_pos(n) 
        }
        board.display
    end   
end

class Rook

    def rook_path(start,target)
        # the starting point is inserted into the Knightnode
        # it creates all the possible moves 
        current = RookNode.new(start)
           
        queue = []
   
        # checks if the starting point has moved toward target
        # this is checking breath first
        # checking all the each layer of moves
        # then moving to the next 
        until current.location == target
            current.possible_moves.each {|move| queue << RookNode.new(move, current)}
            current = queue.shift
        end
        # documents the path thats being taken to get to 
        # the target
        path = [current.location]
  
        # checks all parents of the target to trace
        # back to the tarting point
        # puts into the path array to document it
        until current.location == start
            path << current.parent.location
            current = current.parent
        end
        # reversing path array so its in 
        # chronological order meaning start to end
        true_path = path.reverse
        puts true_path.inspect
        true_path
        board = Board.new
 
        true_path.each {|n| 
            board.rook_move_pos(n) 
        }
        board.display
    end   
end 

class Pawn

    def pawn_path(start,target)
        # the starting point is inserted into the Knightnode
        # it creates all the possible moves 
        current = PawnNode.new(start)
           
        queue = []
   
        # checks if the starting point has moved toward target
        # this is checking breath first
        # checking all the each layer of moves
        # then moving to the next 
        until current.location == target
            current.possible_moves.each {|move| queue << PawnNode.new(move, current)}
            current = queue.shift
        end
        # documents the path thats being taken to get to 
        # the target
        path = [current.location]
  
        # checks all parents of the target to trace
        # back to the tarting point
        # puts into the path array to document it
        until current.location == start
            path << current.parent.location
            current = current.parent
        end
        # reversing path array so its in 
        # chronological order meaning start to end
        true_path = path.reverse
        true_path
        #board = Board.new
 
        #true_path.each {|n| 
        #    board.pawn_move_pos(n) 
        #}
        #board.display
    end   
end 

class Queen

    def queen_path(start,target)
        # the starting point is inserted into the Knightnode
        # it creates all the possible moves 
        current = QueenNode.new(start)
           
        queue = []
   
        # checks if the starting point has moved toward target
        # this is checking breath first
        # checking all the each layer of moves
        # then moving to the next 
        until current.location == target
            current.possible_moves.each {|move| queue << QueenNode.new(move, current)}
            current = queue.shift
        end
        # documents the path thats being taken to get to 
        # the target
        path = [current.location]
  
        # checks all parents of the target to trace
        # back to the tarting point
        # puts into the path array to document it
        until current.location == start
            path << current.parent.location
            current = current.parent
        end
        # reversing path array so its in 
        # chronological order meaning start to end
        true_path = path.reverse
        puts true_path.inspect
        true_path
        board = Board.new
 
        true_path.each {|n| 
            board.queen_move_pos(n) 
        }
        board.display
    end   
end 

class King

    def king_path(start,target)
        # the starting point is inserted into the Knightnode
        # it creates all the possible moves 
        current = KingNode.new(start)
           
        queue = []
   
        # checks if the starting point has moved toward target
        # this is checking breath first
        # checking all the each layer of moves
        # then moving to the next 
        until current.location == target
            current.possible_moves.each {|move| queue << KingNode.new(move, current)}
            current = queue.shift
        end
        # documents the path thats being taken to get to 
        # the target
        path = [current.location]
  
        # checks all parents of the target to trace
        # back to the tarting point
        # puts into the path array to document it
        until current.location == start
            path << current.parent.location
            current = current.parent
        end
        # reversing path array so its in 
        # chronological order meaning start to end
        true_path = path.reverse
        puts true_path.inspect
        true_path
        board = Board.new
 
        true_path.each {|n| 
            board.king_move_pos(n) 
        }
        board.display
    end   
end 

# put restrictions on the pieces 
    # knight is fine

# must keep track of how many moves made for pawn 
    # 0 moves made allows for 2 on path
    # else only 1 
    # have temporary addition row pawn 
    # make temp - [1,-1],[1,1]
# king only allowed one movement in path
# queen has no restictions keep path the same
# rook has no restrictions keep path the same
# bishop has no restrictions keep path the same

=begin
knight = KnightNode.new([0,0])
puts "Knight possible moves: #{knight.possible_moves.inspect}"
Knight.new.Knight_path([3,3], [1,8])
bishop = BishopNode.new([0,0])
puts "Bishop possible moves: #{bishop.possible_moves.inspect}"
puts Bishop.new.Bishop_path([2,2], [7,1])
puts Bishop.new.Bishop_path([2,2], [8,8])
rook = RookNode.new([0,0])
puts "Rook possible moves: #{rook.possible_moves.inspect}"
puts Rook.new.Bishop_path([2,2], [2,8])
=end
pawn = PawnNode.new([0,0])
puts "Pawn possible moves: #{pawn.possible_moves.inspect}"
puts Pawn.new.pawn_path([7,1],[6,1]).inspect 
Pawn.new.pawn_path([2,2],[8,2])
=begin
board = Board.new
board.white_knight_pos([1,3])
board.white_knight_pos([3,5])
board.black_bishop_pos([4,6])
=end
#board.display
=begin
queen = QueenNode.new([0,0])
puts "Queen possible moves: #{queen.possible_moves.inspect}"
Queen.new.queen_path([2,2], [1,8])
king = KingNode.new([0,0])
puts "King possible moves: #{king.possible_moves.inspect}"
King.new.king_path([2,2],[3,6])
=end

white_king = "♔"
white_queen = "♕"
white_rook = "♖"
white_bishop = "♗"
white_knight = "♘"
white_pawn = "♙"
black_king = "♚"
black_queen = "♛"
black_rook = "♜"
black_bishop = "♝"
black_knight = "♞"
black_pawn = "♟"

knight = "♞"
knight.force_encoding('utf-8')

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
