require_relative '../FizzBuzz'

describe "Fizz Buzz spec" do
  describe "When printing" do
    patterns = {
      "Fizz" => Proc.new { |n, w| n % 3 == 0 ? "#{w}Fizz" : w },
      "Buzz" => Proc.new { |n, w| n % 5 == 0 ? "#{w}Buzz" : w },
      "Zap" => Proc.new { |n, w| n % 7 == 0 ? "#{w}Zap" : w },
      "Nike" => Proc.new { |n, w| n % 13 == 0 ? "#{w}Nike" : w },
      "Greep" => Proc.new { |n, w| n.to_s.include?("1") ? "#{w}Greep" : w },
      "Awesome" => Proc.new { |n, w| n == 47 ? "Awesome" : w }
    }

    it "the number 9 it should be Fizz" do
      expect(FizzBuzz.apply(patterns, 9)).to eq("Fizz")
    end

    it "the number 10 it should be BuzzGreep" do
      expect(FizzBuzz.apply(patterns, 10)).to eq("BuzzGreep")
    end

    it "the number 15 should be FizzBuzzGreep" do
      expect(FizzBuzz.apply(patterns, 15)).to eq("FizzBuzzGreep")
    end

    it "the number 45 should be FizzBuzz" do
      expect(FizzBuzz.apply(patterns, 45)).to eq("FizzBuzz")
    end

    it "the number 13 should be NikeGreep" do
      expect(FizzBuzz.apply(patterns, 13)).to eq("NikeGreep")
    end

    it "the number contains 11 should be Greep" do
      expect(FizzBuzz.apply(patterns, 11)).to eq("Greep")
    end

    it "the number is 47 it should be Awesome" do
      expect(FizzBuzz.apply(patterns, 47)).to eq("Awesome")
    end

  end
end

