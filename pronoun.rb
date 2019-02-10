require './noun'

class Pronoun < Noun
  attr_reader :name, :plurality, :gender, :person, :position

  def initialize(name:, plurality:, gender: 'neutral', person:, position:)
    super(name:name, plurality: plurality, gender: gender)
    @person = person
    @position = position
  end

  class << self
    def all
      build_all
    end

    def person(number)
      if Grammar::PERSONS.include?(number)
        all.select {|pronoun| pronoun.person == number }
      else
        "#{number} is not a valid 'person' value in English grammar. Your options are: 'first', 'second', or 'third.'"
      end
    end


    def singular
      all.select {|pronoun| pronoun.plurality == 'singular' }
    end

    def plural
      all.select {|pronoun| pronoun.plurality == 'singular' }
    end

    def subject_position(output = nil)
      return all.select {|pronoun| pronoun.position == 'subject' } if output == nil
      all.select {|pronoun| pronoun.position == 'subject' }.map { |pronoun| pronoun.name }
    end




    def object_position
      all.select {|pronoun| pronoun.position == 'object' }
    end

    private
    def build_all
      all = []

      # First-person
      all << self.new(
        name: 'i',
        person: 'first',
        plurality: 'singular',
        position: 'subject',
        gender: 'neutral'
      )

      all << self.new(
        name: 'me',
        person: 'first',
        plurality: 'singular',
        position: 'object',
        gender: 'neutral'
      )

      all << self.new(
        name: 'we',
        person: 'first',
        plurality: 'plural',
        position: 'subject',
        gender: 'mixed'
      )

      all << self.new(
        name: 'us',
        person: 'first',
        plurality: 'plural',
        position: 'object',
        gender: 'mixed'
      )

      # Second-person
      all << self.new(
        name: 'you',
        person: 'second',
        plurality: 'singular',
        position: 'subject',
        gender: 'neutral'
      )

      all << self.new(
        name: 'you',
        person: 'second',
        plurality: 'singular',
        position: 'object',
        gender: 'neutral'
      )

      all << self.new(
        name: 'you',
        person: 'second',
        plurality: 'plural',
        position: 'subject',
        gender: 'mixed'
      )

      all << self.new(
        name: 'you',
        person: 'second',
        plurality: 'plural',
        position: 'object',
        gender: 'mixed'
      )

      # Third-person
      all << self.new(
        name: 'he',
        person: 'third',
        plurality: 'singular',
        position: 'subject',
        gender: 'masculine'
      )

      all << self.new(
        name: 'him',
        person: 'third',
        plurality: 'singular',
        position: 'object',
        gender: 'masculine'
      )

      all << self.new(
        name: 'she',
        person: 'third',
        plurality: 'singular',
        position: 'subject',
        gender: 'feminine'
      )

      all << self.new(
        name: 'her',
        person: 'third',
        plurality: 'singular',
        position: 'object',
        gender: 'feminine'
      )

      all << self.new(
        name: 'it',
        person: 'third',
        plurality: 'singular',
        position: 'subject',
        gender: 'neutral'
      )

      all << self.new(
        name: 'it',
        person: 'third',
        plurality: 'singular',
        position: 'object',
        gender: 'neutral'
      )

      all << self.new(
        name: 'they',
        person: 'third',
        plurality: 'plural',
        position: 'subject',
        gender: 'mixed'
      )

      all << self.new(
        name: 'them',
        person: 'third',
        plurality: 'plural',
        position: 'object',
        gender: 'mixed'
      )
    end
  end
end


p Pronoun.all
p Pronoun.person('fifth')
# p Pronoun.subject_position
