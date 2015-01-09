class String
  define_method(:word_frequency) do |to_find|
    frequency = 0
    downcase!()
    if self.==(to_find)
      frequency = 1
    end
    frequency
  end
end
