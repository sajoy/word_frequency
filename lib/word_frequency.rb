class String
  define_method(:word_frequency) do |to_find|
    downcase!()
    gsub!(/[^a-z0-9\s]/, ' ')
    to_search = split()
    frequency = 0
    to_search.each() do |word|
      if word.==(to_find)
        frequency = frequency.+(1)
      elsif word.include?(to_find)
        number_of_times = word.split(/(?=#{to_find})/)
        number_of_times.each() do |section|
          if section.include?(to_find)
            frequency = frequency.+(1)
          end
        end
      end
    end
    frequency
  end
end
