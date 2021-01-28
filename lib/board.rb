#CI-DESSOUS : class qui affiche le tableau, le met à jour 

class Board   
    attr_reader :board
        
    def initialize
        sleep(1)
        puts ""
        puts "===== La partie commence ! ====="
        puts ""
        puts "READYYYYY?" 
        puts "GO 👊💥 ! "
        puts ""
        puts ""
      
      puts "0️⃣ | 1️⃣ | 2️⃣"
      puts "-----------"
      puts "3️⃣ | 4️⃣ | 5️⃣"
      puts "-----------"
      puts "6️⃣ | 7️⃣ | 8️⃣"
      puts ""

      puts "Tape un chiffre qui déterminera ta position sur ces 8 cases"
      puts ""
      @board = [" "," "," "," "," "," "," "," "," "]
    end


  #CI-DESSOUS: méthode qui met à jour l'array @board (ci-dessus) en remplissant par X ou Y
    def board_update(position, symbol)
      @board[position] = symbol
      game_board_display(@board)
    end
  #CI-DESSOUS: méthode qui affiche les mise à jour pour chaque tour   
    def game_board_display (board)
        puts ""
      puts "#{board[0]} | #{board[1]} | #{board[2]}"
      puts "---------"
      puts "#{board[3]} | #{board[4]} | #{board[5]}"
      puts "---------"
      puts "#{board[6]} | #{board[7]} | #{board[8]}"
    end
end