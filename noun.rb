require './grammar'

class Noun < Grammar
  attr_reader :name, :plurality, :gender

  def initialize(name:, plurality:, gender: 'neutral')
    @name = name
    @plurality = plurality
    @gender = gender
  end
end
