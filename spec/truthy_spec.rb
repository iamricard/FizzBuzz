require_relative '../SCalc'

describe "String calculator spec" do
  describe "When adding" do
    it "and given an empty string it should return 0" do
      expect(SCalc.add('')).to eq(0)
    end

    it "and given one number it should return that number" do
      expect(SCalc.add('1')).to eq(1)
    end

    it "and given two numbers it should return the sum both numbers" do
      expect(SCalc.add('1,2')).to eq(3)
    end

    it "and given several numbers it should return the sum of all of them" do
      expect(SCalc.add('1,2,3,4,5,6,7,8,9')).to eq(45)
    end

    it "and given numbers with a newline it should still sum all of them" do
      expect(SCalc.add("1\n2\n3")).to eq(6)
    end

    it "should accept a custom delimiter like so '//[delimiter]\\n'" do
      expect(SCalc.add("//;\n1;2;3")).to eq(6)
      expect(SCalc.add("//;1;2;3")).to eq(6)
      expect(SCalc.add("//a\n1a2a3")).to eq(6)
    end

    it "should not accept negative numbers" do
      expect{ SCalc.add("1,-3,6") }.to raise_error("negatives not allowed. -3")
      expect{ SCalc.add("1,-3,-6") }.to raise_error("negatives not allowed. -3 -6")
      expect(SCalc.add("//-\n1-3-6")).to eq(10)
    end
  end
end

