require './grammar'

class Adjective < Grammar
  attr_reader :name

  def initialize(name:)
    @name = name
  end
end
