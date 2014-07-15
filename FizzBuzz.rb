class FizzBuzz
  def self.apply(patterns, number)
    word = ""
    patterns.each do |k, v|
      word = v.call(number, word)
    end

    word != "" ? word : number
  end
end

