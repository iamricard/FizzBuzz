class SCalc
    def initialize
    end

    def self.add(numbers)
      delimiter = find_delimiter(numbers)
      has_negatives(numbers, delimiter)
      if delimiter != ',' then numbers = numbers.split(delimiter, 2)[1] end
      numbers = numbers.strip.gsub(/\n/, ',').split(delimiter)
      result = numbers.reduce { |sum, n| sum.to_i + n.to_i }
      result.to_i
    end

    private
    def self.find_delimiter(numbers)
      numbers.start_with? ? numbers[2] : ','
    end

    def self.has_negatives(numbers, delimiter)
      if delimiter != '-' then
        negatives = numbers.scan(/-\d+/)
        if negatives.length > 0 then
          raise "negatives not allowed. #{negatives.join(" ").strip}"
        end
      end
    end
end

