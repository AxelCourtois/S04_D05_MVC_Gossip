require_relative 'controller'

class Router

  def initialize
    @controller = Controller.new
  end

  def perform
    while true
      puts "\nSalut mon pote, que décides-tu de faire ?"
      puts "\n1. Tu veux créer un gossip?"
      puts "2. Tu veux accéder à tous les potins créés ?"
      puts "3. Tu veux supprimer tous les potins?"
      puts "4. Tu veux te barrer? Quel dommage..."
      print "> "
      user_answer = gets.chomp.to_i

      case user_answer
      when 1 
        @controller.create_gossip

      when 2
        @controller.index_gossips

      when 3
        @controller.destroy_all_gossips
      
      when 4
        puts "\nTu as le droit à une pyramide de merde avant... Non j'dehek"
        break
      else 
        puts "\nTa réponse ne respecte pas les conditions, relis les choix de réponses"
      end
    end
  end

end