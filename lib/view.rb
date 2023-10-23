

class View 

  def create_gossip
    puts "\nIl va falloir que tu me donnes l'autheur de ton gossip"
    print "> "
    author_gossip_user = gets.chomp

    puts "Et quel est le contenus que tu souhaites enregistrer ?"
    print "> "
    content_gossip_user = gets.chomp

    return params = {author: author_gossip_user, content: content_gossip_user}
  end


  def index_gossips(gossips)
    gossips.each do |gossip|
      puts "\n----------------------------------------------------------------"
      puts "Autheur : #{gossip.author}"
      puts "Contenu : #{gossip.content}"
      puts "----------------------------------------------------------------"
    end
  end
end
