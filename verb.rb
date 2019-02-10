require './grammar'

class Verb < Grammar
  attr_reader :infinitive,
              :tense,
              :person,
              :first_person_singular,
              :first_person_plural,
              :second_person_singular,
              :second_person_plural,
              :third_person_singular,
              :third_person_plural

  def initialize(infinitive:,
                 tense:,
                 first_person_singular:,
                 first_person_plural:,
                 second_person_singular:,
                 second_person_plural:,
                 third_person_singular:,
                 third_person_plural:)
    @infinitive = infinitive
    @tense = tense
    @first_person_singular = first_person_singular
    @first_person_plural = first_person_plural
    @second_person_singular = second_person_singular
    @second_person_plural = second_person_plural
    @third_person_singular = third_person_singular
    @third_person_plural = third_person_plural
  end
end

p Verb.new(
  infinitive: 'to imagine',
  tense: 'present',
  first_person_singular: 'imagine',
  first_person_plural: 'imagine',
  second_person_singular: 'imagines',
  second_person_plural: 'imagine',
  third_person_singular: 'imagine',
  third_person_plural: 'imagine'
)
