class Location

    # pawn shift (how many times pawn was moved)
    attr_accessor :pawnw1_shift, :pawnw2_shift, :pawnw3_shift, :pawnw4_shift
    attr_accessor :pawnw5_shift, :pawnw6_shift, :pawnw7_shift, :pawnw8_shift
    attr_accessor :pawnb1_shift, :pawnb2_shift, :pawnb3_shift, :pawnb4_shift
    attr_accessor :pawnb5_shift, :pawnb6_shift, :pawnb7_shift, :pawnb8_shift 

    # white pieces 
    attr_accessor :position_wp1, :position_wp2, :position_wp3, :position_wp4
    attr_accessor :position_wp5, :position_wp6, :position_wp7, :position_wp8
    attr_accessor :position_wn1, :position_wn2, :position_wb1, :position_wb2
    attr_accessor :position_wr1, :position_wr2, :position_wq, :position_wk
    
    # black pieces 
    attr_accessor :position_bp1, :position_bp2, :position_bp3, :position_bp4
    attr_accessor :position_bp5, :position_bp6, :position_bp7, :position_bp8
    attr_accessor :position_bn1, :position_bn2, :position_bb1, :position_bb2
    attr_accessor :position_br1, :position_br2, :position_bq, :position_bk
    
    # dead pieces names
    attr_accessor :dead_piece_name

    # dead pieces location 
    attr_accessor :dead_location

    def initialize 

        # dead pieces 
        @dead_location = []
        @dead_piece_name = []

        # pawn shift (how many times pawn was moved)
        @pawnw1_shift = 0
        @pawnw2_shift = 0
        @pawnw3_shift = 0
        @pawnw4_shift = 0
        @pawnw5_shift = 0
        @pawnw6_shift = 0
        @pawnw7_shift = 0
        @pawnw8_shift = 0
        @pawnb1_shift = 0
        @pawnb2_shift = 0
        @pawnb3_shift = 0
        @pawnb4_shift = 0
        @pawnb5_shift = 0
        @pawnb6_shift = 0
        @pawnb7_shift = 0
        @pawnb8_shift = 0

        # white pawns
        @position_wp1 = [2,1]	
        @position_wp2 = [2,2]	
        @position_wp3 = [2,3]	
        @position_wp4 = [2,4]	
        @position_wp5 = [2,5]	
        @position_wp6 = [2,6]	
        @position_wp7 = [2,7]	
        @position_wp8 = [2,8]	
 
        # white knights 
        @position_wn1 = [1,2]
        @position_wn2 = [1,7]
 
        # white bishops
        @position_wb1 = [1,3]
        @position_wb2 = [1,6]
 
        # white rooks 
        @position_wr1 = [1,1]
        @position_wr2 = [1,8]	
 
        # white queen
        @position_wq = [1,4]
 
        # white king
        @position_wk = [1,5]
 
        # black pawns
        @position_bp1 = [7,1]
        @position_bp2 = [7,2]
        @position_bp3 = [7,3]
        @position_bp4 = [7,4]
        @position_bp5 = [7,5]
        @position_bp6= [7,6]
        @position_bp7= [7,7]
        @position_bp8= [7,8]
 
        # black knights
        @position_bn1 = [8,2]
        @position_bn2 = [8,7]
 
        # black bishop
        @position_bb1 = [8,3]
        @position_bb2 = [8,6]
 
        # black rooks
        @position_br1 = [8,1]
        @position_br2 = [8,8]
 
        # black queen
        @position_bq = [8,4]
         
        # black king
        @position_bk = [8,5]
    end
end