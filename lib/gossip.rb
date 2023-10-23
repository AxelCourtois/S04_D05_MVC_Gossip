require_relative 'controller'
require_relative 'view'
require 'csv'

class Gossip
  attr_reader :author, :content

  @@all_gossips = []

  def initialize(author, content)
    @author = author
    @content = content
  end

  def save
    CSV.open('db/gossip.csv', 'a') do |csv|
      csv << [@author, @content]
    end
  end

  def self.all
    all_gossips = []

    CSV.foreach('db/gossip.csv') do |row|
      author = row[0]
      content = row[1]

      gossip_instance = Gossip.new(author, content)

      all_gossips << gossip_instance
    end
    return all_gossips
  end

end
