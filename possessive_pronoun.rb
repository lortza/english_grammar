require './pronoun'

# Examples: mine, ours, yours, his, hers, its, theirs
# Context: That cat is mine.

class PossessivePronoun < Pronoun
  attr_reader :name, :plurality, :gender, :person

  def initialize(name:, plurality:, gender: 'neutral', person:)
    super(name:name, plurality: plurality, gender: gender)
    @person = person
  end

  class << self
    def all
      build_all
    end


    private
    def build_all
      all = []

      # First-person
      all << self.new(
        name: 'mine',
        person: 'second',
        plurality: 'singular',
        gender: 'neutral'
      )

      all << self.new(
        name: 'ours',
        person: 'first',
        plurality: 'plural',
        gender: 'neutral'
      )

      # Second-person
      all << self.new(
        name: 'yours',
        person: 'second',
        plurality: 'singular',
        gender: 'neutral'
      )

      all << self.new(
        name: 'yours',
        person: 'second',
        plurality: 'plural',
        gender: 'mixed'
      )

      # Third-person
      all << self.new(
        name: 'his',
        person: 'third',
        plurality: 'singular',
        gender: 'masculine'
      )

      all << self.new(
        name: 'hers',
        person: 'third',
        plurality: 'singular',
        gender: 'feminine'
      )

      all << self.new(
        name: 'its',
        person: 'third',
        plurality: 'singular',
        gender: 'neutral'
      )

      all << self.new(
        name: 'theirs',
        person: 'third',
        plurality: 'plural',
        gender: 'neutral'
      )


    end
  end
end


p PossessivePronoun.all
