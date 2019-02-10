class Grammar

  PERSONS = %w[first second third]

  class << self
    def all
      build_all
    end

    private
    def build_all
      all = []
    end
  end

end
