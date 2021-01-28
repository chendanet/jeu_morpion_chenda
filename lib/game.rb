class Game
    WINNING_COMBOS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [6,4,2],
    ]
    
      def initialize
       @players = Player.new
      end
      
      #CI-DESSOUS : méthode qui compte leur nombre de tour des joueurs (partie en cours)
      def move
        @end = false
        @gameboard = Board.new
        @turn = 1
        while @turn<10 
          if @turn % 2 != 0
              turn_sequence(@players.player1, "❌")
          elsif @turn % 2 == 0
              turn_sequence(@players.player2, "⭕")
          end
        end
      end
      #CI-DESSOUS:  choix de la position + tour de chaque joueur
      def turn_sequence (player, symbol)
        sleep(1)
        puts "Joueur #{symbol} ✨#{player}✨ C'est ton tour de choisir une position 😁"
        @player_move = gets.chomp.to_i
        if (0..8).include?(@player_move) && @gameboard.board[@player_move] == " " && @end == false
          @turn += 1
          @gameboard.board_update(@player_move, symbol)
          win_check
          draw_check
        else
          puts "Entre un nombre entre 0️⃣ à 8️⃣  dans l'une des cases vides\n"
        end
      end
    # CI- DESSOUS : méthode pour comparer l'array du board + les combinaisons gagnantes afin de déterminer
    #s'il y a un gagnant
      def win_check
        WINNING_COMBOS.each do |win_check|
          if (@gameboard.board[win_check[0]] == @gameboard.board[win_check[1]] && 
            @gameboard.board[win_check[1]] == @gameboard.board[win_check[2]]) &&
            @gameboard.board[win_check[0]] != " "
            if @gameboard.board[win_check[0]] == "❌"
              puts "🥳#{@players.player1} a gagné 👏 ! Félicitations !"
              @turn = 10
              @end = true
              play_again?
            elsif @gameboard.board[win_check[0]] == "⭕"
              puts "🥳#{@players.player2} a gagné 👏 ! Félicitations !"
              @turn = 10
              @end = true
              play_again?
            end
          end
        end
      end
      # CI-DESSOUS : méthode pour annoncer la fin du jeu    
      def draw_check
        if @turn == 10 && @end == false
          puts "Dommage ! Vous y etiez presque 🥴 !"
          play_again?
        end
      end
    
    end
    
    # CI-DESSOUS une méthode pour sortir de la boucle du jeu ou non
    def play_again?
        puts "Petite revanche? (O/N) et ENTER"
        response = ""
        while response != "O" || response != "N"
            response = gets.chomp.upcase
            if response == "O"
                newgame = Game.new
                newgame.move  
            elsif response == "N"
            else 
                puts " ° Fin du jeu ° "
            end
        end
    end
     
    
      