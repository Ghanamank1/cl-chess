class Board

    def initialize
        @board = Array.new(8) {Array.new(8) {"-"}}
        @white_knight = "N"
        @white_bishop = "B"	
        @white_pawn = "P"	
        @white_queen = "Q"	
        @white_rook = "R"	
        @white_king = "K"
        @black_knight = "n"
        @black_bishop = "b"
        @black_pawn = "p"
        @black_queen = "q"
        @black_rook = "r"
        @black_king	 = "k"
    end

    # first column is used to write row numbers
    # rows start off with 0 at top left
    # and 7,0 at bottom left
    # ordering needs to be properly done
    def display
        puts  
        puts "==================="
        puts
        puts "   CURRENT BOARD"
        puts 

        # board is reversed 
        # normal array starts from top:0 down to 8 
        # making a back ward board
        column = 9
        @board.reverse.each {|n| 
            column -= 1
            puts " #{column} #{n.join(' ')}"
        }
        array = (1..8).to_a
        puts "   #{array.join(" ")}"
        puts 
    end

    def clear_location(location)
        @board[location[0]-1][location[1]-1] = '-'
    end
   # displays white Knight on the board
    def white_knight_pos(location)
        @board[location[0]-1][location[1]-1] = @white_knight.force_encoding('utf-8')
    end
    
    # displays white bishop of the board
    def white_bishop_pos(location)
        @board[location[0]-1][location[1]-1] = @white_bishop.force_encoding('utf-8')
    end

    # displays white rook of the board
    def white_rook_pos(location)
        @board[location[0]-1][location[1]-1] = @white_rook.force_encoding('utf-8')
    end

    # displays white pawn of the board
    def white_pawn_pos(location)
        @board[location[0]-1][location[1]-1] = @white_pawn.force_encoding('utf-8')
    end

    # displays white queen of the board
    def white_queen_pos(location)
        @board[location[0]-1][location[1]-1] = @white_queen.force_encoding('utf-8')
    end

    # displays white king of the board
    def white_king_pos(location)
        @board[location[0]-1][location[1]-1] = @white_king.force_encoding('utf-8')
    end

    # displays black king of the board
    def black_knight_pos(location)
        @board[location[0]-1][location[1]-1] = @black_knight.force_encoding('utf-8')
    end
    
    # displays black bishop of the board
    def black_bishop_pos(location)
        @board[location[0]-1][location[1]-1] = @black_bishop.force_encoding('utf-8')
    end

    # displays black rook of the board
    def black_rook_pos(location)
        @board[location[0]-1][location[1]-1] = @black_rook.force_encoding('utf-8')
    end

    # displays black pawn of the board
    def black_pawn_pos(location)
        @board[location[0]-1][location[1]-1] = @black_pawn.force_encoding('utf-8')
    end

    # displays black queen of the board
    def black_queen_pos(location)
        @board[location[0]-1][location[1]-1] = @black_queen.force_encoding('utf-8')
    end

    # displays black king of the board
    def black_king_pos(location)
        @board[location[0]-1][location[1]-1] = @black_king.force_encoding('utf-8')
    end
end