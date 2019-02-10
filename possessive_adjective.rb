require './adjective'

# Examples: my, our, your, his, her, its, their
# Context: That is my cat.

class PossessiveAdjective < Adjective
  attr_reader :name, :plurality, :gender, :person

  def initialize(name:, plurality:, gender: 'neutral', person:)
    super(name:name)
    @person = person
    @plurality = plurality
    @gender = gender
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
        name: 'my',
        person: 'first',
        plurality: 'singular',
        gender: 'neutral'
      )

      all << self.new(
        name: 'our',
        person: 'first',
        plurality: 'plural',
        gender: 'mixed'
      )

      # Second-person
      all << self.new(
        name: 'your',
        person: 'second',
        plurality: 'singular',
        gender: 'neutral'
      )

      all << self.new(
        name: 'your',
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
        name: 'her',
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
        name: 'their',
        person: 'third',
        plurality: 'plural',
        gender: 'mixed'
      )
    end
  end


end

p PossessiveAdjective.all
