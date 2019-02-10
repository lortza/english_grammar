require './grammar'

class Adverb < Grammar
  attr_reader :name

  def initialize(name:)
    @name = name
  end
end
