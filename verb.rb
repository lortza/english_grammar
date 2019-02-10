require './grammar'

class Verb < Grammar
  attr_reader :name, :tense, :person

  def initialize(name:, tense:, person:)
    @name = name
    @tense = tense
    @person = person
  end
end
