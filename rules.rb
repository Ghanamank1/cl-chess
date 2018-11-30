require './board.rb'
require './pieces.rb'
require './Node.rb'
require './location.rb'

class Rules 

    def initialize
        # Game board
        @board = Board.new

        # Turns for entier game
        @turns = 0
        
        @piece = Location.new
    end

    def initiate 

        # white entries
        @white_pawns = [
            ["wp1" ,@piece.position_wp1], ["wp2", @piece.position_wp2], ["wp3", @piece.position_wp3], ["wp4", @piece.position_wp4],
            ["wp5" ,@piece.position_wp5], ["wp6", @piece.position_wp6], ["wp7", @piece.position_wp7], ["wp8", @piece.position_wp8]
        ]

        @white_knights = [
            ["wn1", @piece.position_wn1], ["wn2", @piece.position_wn2]
        ]

        @white_bishops = [
            ["wb1", @piece.position_wb1], ["wb2", @piece.position_wb2]
        ]

        @white_rooks = [
            ["wr1", @piece.position_wr1], ["wr2", @piece.position_wr2]
        ]
        
        @white_queen = [
            ["wq", @piece.position_wq]
        ]

        @white_king = [ 
            ["wk", @piece.position_wk]
        ]

        @white_pieces = [
            ["wp1", @piece.position_wp1], ["wp2", @piece.position_wp2], ["wp3", @piece.position_wp3], ["wp4", @piece.position_wp4],
            ["wp5", @piece.position_wp5], ["wp6", @piece.position_wp6], ["wp7", @piece.position_wp7], ["wp8", @piece.position_wp8],
            ["wn1", @piece.position_wn1], ["wn2", @piece.position_wn2], ["wb1", @piece.position_wb1], ["wb2", @piece.position_wb2],
            ["wr1", @piece.position_wr1], ["wr2", @piece.position_wr2], ["wq", @piece.position_wq], ["wk", @piece.position_wk]
        ]
        
        # black entries 
        @black_pawns = [
            ["bp1", @piece.position_bp1], ["bp2", @piece.position_bp2], ["bp3", @piece.position_bp3], ["bp4", @piece.position_bp4],
            ["bp5", @piece.position_bp5], ["bp6", @piece.position_bp6], ["bp7", @piece.position_bp7], ["bp8", @piece.position_bp8]
        ]
        
        @black_knights = [
            ["bn1", @piece.position_bn1], ["bn2", @piece.position_bn2]
        ]

        @black_bishops = [
            ["bb1", @piece.position_bb1], ["bb2", @piece.position_bb2]
        ]

        @black_rooks = [
            ["br1", @piece.position_br1], ["br2", @piece.position_br2]
        ]

        @black_queen = [
            ["bq", @piece.position_bq]
        ]
       
        @black_king = [
            ["bk", @piece.position_bk]
        ]

        @black_pieces = [
            ["bp1", @piece.position_bp1], ["bp2", @piece.position_bp2], ["bp3", @piece.position_bp3], ["bp4", @piece.position_bp4],
            ["bp5", @piece.position_bp5], ["bp6", @piece.position_bp6], ["bp7", @piece.position_bp7], ["bp8", @piece.position_bp8],
            ["bn1", @piece.position_bn1], ["bn2", @piece.position_bn2], ["bb1", @piece.position_bb1], ["bb2", @piece.position_bb2],
            ["br1", @piece.position_br1], ["br2", @piece.position_br2], ["bq", @piece.position_bq], ["bk", @piece.position_bk]
        ]

        # displaying white pawns
        @white_pawns.each {|n|
            next if @piece.dead_piece_name.any?(n[0])
            @board.white_pawn_pos(n[1])
        }

        # displaying white knights
        @white_knights.each {|n|
            next if @piece.dead_piece_name.any?(n[0])
            @board.white_knight_pos(n[1])
        }

        # displaying white bishops
        @white_bishops.each {|n|
            next if @piece.dead_piece_name.any?(n[0])
            @board.white_bishop_pos(n[1])
        }

        # displaying white rooks
        @white_rooks.each {|n|
            next if @piece.dead_piece_name.any?(n[0])
            @board.white_rook_pos(n[1])
        }

        # displaying white queen
        @white_queen.each {|n|
            next if @piece.dead_piece_name.any?(n[0])
            @board.white_queen_pos(n[1])
        }

        # displaying white king 
        @white_king.each {|n|
            next if @piece.dead_piece_name.any?(n[0])
            @board.white_king_pos(n[1])
        }

        # displaying black pawns
        @black_pawns.each {|n|
            next if @piece.dead_piece_name.any?(n[0])
            @board.black_pawn_pos(n[1])
        }

        # displaying black knights
        @black_knights.each {|n|
            next if @piece.dead_piece_name.any?(n[0])
            @board.black_knight_pos(n[1])
        }

        # displaying black bishops
        @black_bishops.each {|n|
            next if @piece.dead_piece_name.any?(n[0])
            @board.black_bishop_pos(n[1])
        }

        # displaying black rooks
        @black_rooks.each {|n|
            next if @piece.dead_piece_name.any?(n[0])
            @board.black_rook_pos(n[1])
        }

        # displaying black queen
        @black_queen.each {|n|
            next if @piece.dead_piece_name.any?(n[0])
            @board.black_queen_pos(n[1])
        }

        # displaying black king 
        @black_king.each {|n|
            next if @piece.dead_piece_name.any?(n[0])
            @board.black_king_pos(n[1])
        }
    end

    def invalid_white_pawn(node,location)

        @board.display
            puts "You must move one location at a time"
            puts "And into a valid location"
            puts 
            puts "Please insert a valid move:"

        piece = node.new(location)

        # valid if theres black peice there
        black_pieces = []
        @black_pieces.each {|n| black_pieces.push(n[1])}

        # inform users of valid moves IF black piece is there
        white_pieces = []
        @white_pieces.each {|n| white_pieces.push(n[1])}
        number = 0
            piece.possible_moves.select {|n|
                number += 1 if !white_pieces.any?(n) && !(n[0]-location[0] == 1 && n[1]-location[1] == 0) && black_pieces.any?(n)
                
                # next if theres white in the possible move
                next if white_pieces.any?(n) 
                
                # next if theres black but its infront
                next if n[0]-location[0] == 1 && n[1]-location[1] == 0
                
                # next if the move doesn't match black piece
                # for if its empty 
                next if !black_pieces.any?(n)
                puts"#{number}: #{n.join(', ')}"
                puts"#{number+1}: #{[n[0]+1, n[-1]].join(', ')}" if @shift == 0 && location[0] == 2
                puts"#{number+1}: #{[n[0]-1, n[-1]].join(', ')}" if @shift == 0 && location[0] == 7
        }
    end

    def invalid_black_pawn(node,location)

        @board.display
            puts "You must move one location at a time"
            puts "And into a valid location"
            puts 
            puts "Please insert a valid move:"

        piece = node.new(location)

        # valid if theres white peice there
        white_pieces = []
        @white_pieces.each {|n| white_pieces.push(n[1])}

        # inform users of valid moves IF white piece is there
        black_pieces = []
        @black_pieces.each {|n| black_pieces.push(n[1])}
        number = 0
            piece.possible_moves.select {|n|
                number += 1 if !black_pieces.any?(n) && !(n[0]-location[0] == -1 && n[1]-location[1] == 0) && white_pieces.any?(n)
                
                # next if theres black in the possible move
                next if black_pieces.any?(n) 
                
                # next if theres black but its infront
                next if n[0]-location[0] == -1 && n[1]-location[1] == 0
                
                # next if the move doesn't match white piece
                # for if its empty 
                next if !white_pieces.any?(n)
                puts"#{number}: #{n.join(', ')}"
                puts"#{number+1}: #{[n[0]+1, n[-1]].join(', ')}" if @shift == 0 && location[0] == 2
                puts"#{number+1}: #{[n[0]-1, n[-1]].join(', ')}" if @shift == 0 && location[0] == 7
        }
    end

    def invalid_entry(node, location)

        @board.display
            puts "You must move one location at a time"
            puts "And into a valid location"
            puts 
            puts "Please insert a valid move:"

            # inform user of valid moves
            piece = node.new(location)
            all_pieces = []
            @white_pieces.each {|n| all_pieces.push(n[1])}
            @black_pieces.each {|n| all_pieces.push(n[1])}
            number = 0
            piece.possible_moves.select {|n|
                number += 1 if !all_pieces.any?(n)
                next if all_pieces.any?(n)
                puts"#{number}: #{n.join(', ')}"
                puts"#{number+1}: #{[n[0]+1, n[-1]].join(', ')}" if @shift == 0 && location[0] == 2
                puts"#{number+1}: #{[n[0]-1, n[-1]].join(', ')}" if @shift == 0 && location[0] == 7
            }
    end

    def white_position_check(target)

        @white_pieces.each_with_index {|n, index|
                if target == n[1]
                    return true    
                end
                return false if index == @white_pieces.length - 1
        }
    end

    def black_position_check(target)
        
        @black_pieces.each_with_index {|n, index|
            if target == n[1]
                return true    
            end
            return false if index == @black_pieces.length - 1
        }
    end

    def target_display(location)

         # clears out the old location of entry
         @board.clear_location(location)
         initiate
         @board.display

         # will need to likely move this
         puts "Piece Positions" 
         puts 
         puts "Knight Positions:     bn1:#{@piece.position_bn1}, bn2:#{@piece.position_bn2} wn1:#{@piece.position_wn1}, wn2:#{@piece.position_wn2}"  
         puts "White Pawn Positions: wp1:#{@piece.position_wp1}, wp2:#{@piece.position_wp2} wp3:#{@piece.position_wp3}, wp4:#{@piece.position_wp4}, wp5:#{@piece.position_wp5}, wp6:#{@piece.position_wp6}, wp7:#{@piece.position_wp7}, wp8:#{@piece.position_wp8}"  
         puts "Black Pawn Positions: bp1:#{@piece.position_bp1}, bp2:#{@piece.position_bp2} bp3:#{@piece.position_bp3}, bp4:#{@piece.position_bp4}, bp5:#{@piece.position_bp5}, bp6:#{@piece.position_bp6}, bp7:#{@piece.position_bp7}, bp8:#{@piece.position_bp8}"  
         puts 
         puts "Total game turns: #{@turns += 1}"
    end

    def pawn_choice(choice, target)

        if choice == "wp1" && !@piece.dead_piece_name.any?("wp1")
            @piece.position_wp1 = target[-1]
            @piece.pawnw1_shift += 1
        elsif choice == "wp2" && !@piece.dead_piece_name.any?("wp2")
            @piece.position_wp2 = target[-1]
            @piece.pawnw2_shift += 1
        elsif choice == "wp3" && !@piece.dead_piece_name.any?("wp3")
            @piece.position_wp3 = target[-1]
            @piece.pawnw3_shift += 1
        elsif choice == "wp4" && !@piece.dead_piece_name.any?("wp4")
            @piece.position_wp4 = target[-1]
            @piece.pawnw4_shift += 1
        elsif choice == "wp5" && !@piece.dead_piece_name.any?("wp5")
            @piece.position_wp5 = target[-1]
            @piece.pawnw5_shift += 1
        elsif choice == "wp6" && !@piece.dead_piece_name.any?("wp6")
            @piece.position_wp6 = target[-1]
            @piece.pawnw6_shift += 1
        elsif choice == "wp7" && !@piece.dead_piece_name.any?("wp7")
            @piece.position_wp7 = target[-1]
            @piece.pawnw7_shift += 1
        elsif choice == "wp8" && !@piece.dead_piece_name.any?("wp8")
            @piece.position_wp8 = target[-1]        
            @piece.pawnw8_shift += 1
        elsif choice == "bp1" && !@piece.dead_piece_name.any?("bp1")
            @piece.position_bp1 = target[-1]
            @piece.pawnb1_shift += 1
        elsif choice == "bp2" && !@piece.dead_piece_name.any?("bp2")
            @piece.position_bp2 = target[-1]
            @piece.pawnb2_shift += 1
        elsif choice == "bp3" && !@piece.dead_piece_name.any?("bp3")
            @piece.position_bp3 = target[-1]
            @piece.pawnb3_shift += 1
        elsif choice == "bp4" && !@piece.dead_piece_name.any?("bp4")
            @piece.position_bp4 = target[-1]
            @piece.pawnb4_shift += 1
        elsif choice == "bp5" && !@piece.dead_piece_name.any?("bp5")
            @piece.position_bp5 = target[-1]
            @piece.pawnb5_shift += 1
        elsif choice == "bp6" && !@piece.dead_piece_name.any?("bp6")
            @piece.position_bp6 = target[-1]
            @piece.pawnb6_shift += 1
        elsif choice == "bp7" && !@piece.dead_piece_name.any?("bp7")
            @piece.position_bp7 = target[-1]
            @piece.pawnb7_shift += 1
        elsif choice == "bp8" && !@piece.dead_piece_name.any?("bp8")
            @piece.position_bp8 = target[-1]
            @piece.pawnb8_shift += 1
        end
    end

    def pawn_move(choice, move)

        # choice of pawn
        if choice == "wp1" && !@piece.dead_piece_name.any?("wp1")
            @current = @piece.position_wp1
            @shift = @piece.pawnw1_shift
        elsif choice == "wp2" && !@piece.dead_piece_name.any?("wp2")
            @current = @piece.position_wp2
            @shift = @piece.pawnw2_shift
        elsif choice == "wp3" && !@piece.dead_piece_name.any?("wp3")
            @current = @piece.position_wp3
            @shift = @piece.pawnw3_shift
        elsif choice == "wp4" && !@piece.dead_piece_name.any?("wp4")
            @current = @piece.position_wp4
            @shift = @piece.pawnw4_shift
        elsif choice == "wp5" && !@piece.dead_piece_name.any?("wp5")
            @current = @piece.position_wp5
            @shift = @piece.pawnw5_shift
        elsif choice == "wp6" && !@piece.dead_piece_name.any?("wp6")
            @current = @piece.position_wp6
            @shift = @piece.pawnw6_shift
        elsif choice == "wp7" && !@piece.dead_piece_name.any?("wp7")
            @current = @piece.position_wp7
            @shift = @piece.pawnw7_shift
        elsif choice == "wp8" && !@piece.dead_piece_name.any?("wp8")
            @current = @piece.position_wp8
            @shift = @piece.pawnw8_shift        
        elsif choice == "bp1" && !@piece.dead_piece_name.any?("bp1")
            @current = @piece.position_bp1
            @shift = @piece.pawnb1_shift
        elsif choice == "bp2" && !@piece.dead_piece_name.any?("bp2")
            @current = @piece.position_bp2
            @shift = @piece.pawnb2_shift
        elsif choice == "bp3" && !@piece.dead_piece_name.any?("bp3")
            @current = @piece.position_bp3
            @shift = @piece.pawnb3_shift
        elsif choice == "bp4" && !@piece.dead_piece_name.any?("bp4")
            @current = @piece.position_bp4
            @shift = @piece.pawnb4_shift
        elsif choice == "bp5" && !@piece.dead_piece_name.any?("bp5")
            @current = @piece.position_bp5
            @shift = @piece.pawnb5_shift
        elsif choice == "bp6" && !@piece.dead_piece_name.any?("bp6")
            @current = @piece.position_bp6
            @shift = @piece.pawnb6_shift
        elsif choice == "bp7" && !@piece.dead_piece_name.any?("bp7")
            @current = @piece.position_bp7
            @shift = @piece.pawnb7_shift
        elsif choice == "bp8" && !@piece.dead_piece_name.any?("bp8")
            @current = @piece.position_bp8
            @shift = @piece.pawnb8_shift
        else 
            puts "Sorry #{choice} is dead or Invalid entry!"
        end

        if move.length != 2 || !move[0].is_a?(Integer) ||!move[1].is_a?(Integer) || !move[0].between?(1,8) || !move[0].between?(1,8)
            puts 
            puts "=============================================="
            raise "Invalid Move: Must be number between 1 and 8"
            puts "=============================================="
        else        
            
            pawn = Pawn.new
            target = pawn.pawn_path(@current, move)

            # checking whether the use picks one move
            if target.length == 2 
                
                #white 
                if !(@current[0] - move[0] == 1) && (choice == "wp1" && !@piece.dead_piece_name.any?("wp1") || choice == "wp2" && !@piece.dead_piece_name.any?("wp2")|| choice == "wp3" && !@piece.dead_piece_name.any?("wp3") || choice == "wp4" && !@piece.dead_piece_name.any?("wp4") || choice == "wp5" && !@piece.dead_piece_name.any?("wp5") || choice == "wp6" && !@piece.dead_piece_name.any?("wp6") || choice == "wp7" && !@piece.dead_piece_name.any?("wp7") || choice == "wp8" && !@piece.dead_piece_name.any?("wp8") )
                    #check if white is in the position
                    if white_position_check(target[-1])
                  
                        invalid_entry(KnightNode, @current)
                        puts "===================="
                        puts "#{target[-1]} is taken: White piece can't overtake a white piece"
                        puts "===================="
                    
                    # check if black piece is in the position and its not infront then death
                    elsif black_position_check(target[-1]) && ((@current[0] - move[0] == -1) && (@current[1] - move[1] == -1) || (@current[1] - move[1] == 1))
                        
                        # the white piece is dead right away
                        @black_pieces.each {|location|

                            if location[1] == target[-1]
                                # marking it as dead 
                                # so its skipped when initiating
                                @piece.dead_location << location[1]

                                # putting the name so users can't pick it again
                                @piece.dead_piece_name << location[0]
                            end
                        }

                        # assigning the the location 
                        pawn_choice(choice, target)  

                        # displaying the current piece
                        target_display(@current)

                        # tell the user the dead piece
                        puts "==========================="
                        puts "Knight #{@piece.dead_piece_name[-1]} at #{target[-1]} is dead!"
                        puts "==========================="     
                
                    #if target is black and infront = no
                    elsif black_position_check(target[-1]) && (@current[0] - move[0] != -1) && (@current[1] - move[1] != 0)
                        pawn_choice(choice, target)
                        target_display(@current)
                    
                    # if target is not black or white AND not diagonal
                    elsif !black_position_check(target[-1]) && !white_position_check(target[-1]) && (@current[1] - move[1] != 1) && (@current[1] - move[1] != -1)
                        pawn_choice(choice, target)
                        target_display(@current)
                    else 
                        invalid_white_pawn(PawnNode, @current)
                        puts "===================="
                        puts "1: Theres a black or white piece ahead of you"
                        puts "2: Pawn cannot move diagonally unless to kill"
                        puts "===================="
                        puts "CURRENT #{@current}"
                        puts "TARGET #{target}"
                        puts "MOVE #{move}"
                    end 
                #black 
                elsif !(@current[0] - move[0] == -1) && (choice == "bp1" && !@piece.dead_piece_name.any?("bp1") || choice == "bp2" && !@piece.dead_piece_name.any?("bp2") || choice == "bp3" && !@piece.dead_piece_name.any?("bp3") || choice == "bp4" && !@piece.dead_piece_name.any?("bp4") || choice == "bp5" && !@piece.dead_piece_name.any?("bp5") || choice == "bp6" && !@piece.dead_piece_name.any?("bp6") || choice == "bp7" && !@piece.dead_piece_name.any?("bp7") || choice == "bp8" && !@piece.dead_piece_name.any?("bp8")) 
                    if black_position_check(target[-1])
                        @board.display 
                        puts "#{target[-1]} is taken: Black piece can't overtake a black piece"
                    else
                        pawn_choice(choice, target)
                        target_display(@current)
                    end
                else 
                    invalid_entry(PawnNode, @current)
                    puts 
                    puts "*********************************"
                    puts "NOTE: PAWNS CANNOT MOVE BACKWARDS"
                    puts "*********************************"
                end

            elsif target.length == 3 && @shift == 0
                #white
                if choice == "wp1" && !@piece.dead_piece_name.any?("wp1") || choice == "wp2" && !@piece.dead_piece_name.any?("wp2")|| choice == "wp3" && !@piece.dead_piece_name.any?("wp3") || choice == "wp4" && !@piece.dead_piece_name.any?("wp4") || choice == "wp5" && !@piece.dead_piece_name.any?("wp5") || choice == "wp6" && !@piece.dead_piece_name.any?("wp6") || choice == "wp7" && !@piece.dead_piece_name.any?("wp7") || choice == "wp8" && !@piece.dead_piece_name.any?("wp8")
                    #if theres black in the position
                    # can't go forth and vise-versa
                    if white_position_check(target[-1])
                        @board.display 
                        puts "#{target[-1]} is taken: White piece can't overtake a white piece"
                    else
                        pawn_choice(choice, target)
                        target_display(@current)
                    end
                #black
                elsif choice == "bp1" && !@piece.dead_piece_name.any?("bp1") || choice == "bp2" && !@piece.dead_piece_name.any?("bp2") || choice == "bp3" && !@piece.dead_piece_name.any?("bp3") || choice == "bp4" && !@piece.dead_piece_name.any?("bp4") || choice == "bp5" && !@piece.dead_piece_name.any?("bp5") || choice == "bp6" && !@piece.dead_piece_name.any?("bp6") || choice == "bp7" && !@piece.dead_piece_name.any?("bp7") || choice == "bp8" && !@piece.dead_piece_name.any?("bp8")
                    if black_position_check(target[-1])
                        @board.display 
                        puts "#{target[-1]} is taken: Black piece can't overtake a black piece"
                    else
                        pawn_choice(choice, target)
                        target_display(@current)
                    end
                end
            else
                invalid_entry(PawnNode, @current)
            end
        end
    end

    def knight_move(choice, move)

        # choice of knight
        if choice == "wn1" && !@piece.dead_piece_name.any?("wn1")
            @current = @piece.position_wn1
        elsif choice == "wn2" && !@piece.dead_piece_name.any?("wn2")
            @current = @piece.position_wn2
        elsif choice == "bn1" && !@piece.dead_piece_name.any?("bn1")
            @current = @piece.position_bn1
        elsif choice == "bn2" && !@piece.dead_piece_name.any?("bn2")
            @current = @piece.position_bn2
        else 
            puts "Sorry #{choice} is dead or Invalid entry!"
        end
        
        if move.length != 2 || !move[0].is_a?(Integer) ||!move[1].is_a?(Integer) || !move[0].between?(1,8) || !move[0].between?(1,8)
            puts 
            puts "=============================================="
            raise "Invalid Move: Must be number between 1 and 8"
            puts "=============================================="
        else        
            target = Knight.new.knight_path(@current, move)
        
            # checking whether the use picks one move
            if target.length > 2

                invalid_entry(KnightNode, @current)
            elsif target.length == 2
                if choice == "wn1" && !@piece.dead_piece_name.any?("wn1") || choice == "wn2" && !@piece.dead_piece_name.any?("wn2")
                    #checks  if white is in the position
                    if white_position_check(target[-1])
                        
                        invalid_entry(KnightNode, @current)
                        puts "===================="
                        puts "#{target[-1]} is taken: White piece can't overtake a white piece"
                        puts "===================="

                    # check if black piece is in the position
                    elsif black_position_check(target[-1])
                        
                        # the white piece is dead right away
                        @black_pieces.each {|location|

                            if location[1] == target[-1]
                                # marking it as dead 
                                # so its skipped when initiating
                                @piece.dead_location << location[1]

                                # putting the name so users can't pick it again
                                @piece.dead_piece_name << location[0]
                            end
                        }

                        # assigning the the location 
                        if choice == "wn1"
                            @piece.position_wn1 = target[-1]
                        elsif choice == "wn2"
                            @piece.position_wn2 = target[-1]
                        end    

                        # displaying the current piece
                        target_display(@current)

                        # tell the user the dead piece
                        puts "==========================="
                        puts "Knight #{@piece.dead_piece_name[-1]} at #{target[-1]} is dead!"
                        puts "==========================="     
                    
                    # when the location is empty    
                    else
                        if choice == "wn1"
                            @piece.position_wn1 = target[-1]
                        elsif choice == "wn2"
                            @piece.position_wn2 = target[-1]
                        end

                        # displaying the current piece
                        target_display(@current)
                    end
                #black
                elsif choice == "bn1" && !@piece.dead_piece_name.any?("bn1")|| choice == "bn2" && !@piece.dead_piece_name.any?("bn1")
                    # check if black piece is in the position
                    if black_position_check(target[-1])
                
                        invalid_entry(KnightNode, @current)
                        puts "===================="
                        puts "#{target[-1]} is taken: Black piece can't overtake a black piece"
                        puts "===================="

                    # check if white piece is in the position
                    elsif white_position_check(target[-1])
                        
                        # the white piece is dead right away
                        @white_pieces.each {|location|

                            if location[1] == target[-1]
                                # marking it as dead 
                                # so its skipped when initiating
                                @piece.dead_location << location[1]

                                # putting the name so users can't pick it again
                                @piece.dead_piece_name << location[0]
                            end
                        }

                        # assigning the the location 
                        if choice == "bn1"
                            @piece.position_bn1 = target[-1]
                        elsif choice == "bn2"
                            @piece.position_bn2 = target[-1]
                        end    

                        # displaying the current piece
                        target_display(@current)

                        # tell the user the dead piece
                        puts "==========================="
                        puts "Knight #{@piece.dead_piece_name[-1]} at #{target[-1]} is dead!"
                        puts "==========================="     
                    
                    # when the location is empty    
                    else
                        if choice == "bn1" 
                            @piece.position_bn1 = target[-1]
                        elsif choice == "bn2"
                            @piece.position_bn2 = target[-1]
                        end         

                        # displaying the current piece
                        target_display(@current)
                    end
                end
            end
        end
    end

    # identify each piece on the board 
    # each should have its own Knight, etc piece, 
    # with its starting and end positions
    # should switch the end position to the start 
    # when new move is made to determine new possible moves
    # should initialize the figures to keep it cleaner DRY
    # location should have end of path in it
    # to show end location
    # examine path for restrictions 

    # must have even when pieces cross on the board? 
    # maybe? might need to be on the game class 
    def display
        @board.display
    end
    def white_positions
        @white_pieces
    end
    def black_positions
        @black_pieces
    end
    def dead_pieces
        puts"dead locations: #{@piece.dead_location}"
        "dead names: #{@piece.dead_piece_name}" 
    end
end

game = Rules.new
game.initiate
#game.display
#game.knight_move("w2", [3,8])
#game.knight_move("bn2", [6,8])
#game.pawn_move("wp1", [4,2])
#game.pawn_move("wp2", [3,2])
#game.pawn_move("wp1", [6,1])
#game.pawn_move("wp2", [4,2])
#game.knight_move("wn2", [3,8])
#game.pawn_move("wp5", [4,5])
#game.pawn_move("bp8",[6,8])

#game.knight_move("bn1", [6,1])
#game.knight_move("bn1", [5,3])
#game.knight_move("bn1", [4,1])
#game.knight_move("wn1", [3,3])
#game.knight_move("wn1", [4,1])
#game.knight_move('wn1', [5,3])
#game.knight_move('bn1', [5,3])
#game.knight_move('wn1', [2,4])
#game.knight_move('bn1', [7,4])
#game.pawn_move("bp1", [5,1])
#game.pawn_move("bp1", [6,1])
game.pawn_move("bp2", [5,2])
#game.pawn_move("wp2", [4,2])
game.pawn_move("bp2", [4,2])
game.pawn_move("wp2", [4,2])
#game.pawn_move("bp2", [3,2])

#game.pawn_move("wp1",[6,1])

#game.knight_move('bn1', [])

#puts game.white_position_check([1,8])
#puts game.white_positions.inspect
#puts game.black_positions.inspect
#puts game.dead_pieces.inspect

# create a game class after all the rules 
# will have all the pieces on the board 
# and should move pieces in a match
# will be associated with players for the "Game"