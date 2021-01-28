#CI-DESSOUS : méthode qui initialise les 2 joueurs

class Player
    attr_reader :player1, :player2
    
    def initialize
      puts ""
      puts "<>-----<> MorPion fighto <>-----<>"
      puts ""
      puts "Prêt à jouer à Morpion fighto?"
      sleep(1)
      puts ""
      puts "🤖 JOUEUR 1 🤖   Quel est ton prénom 😊?"
      puts ""
      @player1 = gets.chomp
      sleep(1)
      puts ""
      puts "Le joueur ✨#{@player1}✨ prend les ❌"
      puts ""
      puts "👻 JOUEUR 2 👻    Et toi, quel est ton prénom? 😊"
      puts ""
      @player2 = gets.chomp
      sleep(1)
      puts ""
      puts "Le joueur ✨#{@player2}✨ prend les ⭕"
    end
end