require 'calculator'

describe Printer do
  describe '#print_answer' do
    let(:printer) { Printer.new }
    it 'pretty prints the answer' do
      expect(printer.print_answer(4)).to eq "The Answer is: 4"
      expect(printer.print_answer(6)).to eq "The Answer is: 6"
      expect(printer.print_answer(-1)).to eq "The Answer is: -1"
      expect(printer.print_answer(0)).to eq "The Answer is: 0"
      expect(printer.print_answer(Float::INFINITY)).to eq "The Answer is: Infinity"
    end
  end
end

describe Arithmetic do
describe 'A calculator' do
  let(:arithmetic) { Arithmetic.new }
  describe '#add' do
    it 'adds two numbers' do
      expect(arithmetic.add(2, 3)).to eq 5
      expect(arithmetic.add(6, 4)).to eq 10
      expect(arithmetic.add(0, 0)).to eq 0
      expect(arithmetic.add(-1, -1)).to eq -2
      expect(arithmetic.add(Float::INFINITY, 0)).to eq Float::INFINITY
      expect(arithmetic.add(Float::INFINITY, Float::INFINITY)).to eq Float::INFINITY
    end
  end

  describe '#subtract' do
    it 'subtracts two numbers' do
      expect(arithmetic.subtract(3, 2)).to eq 1
      expect(arithmetic.subtract(6, 4)).to eq 2
      expect(arithmetic.subtract(0, 0)).to eq 0
      expect(arithmetic.subtract(-1, -1)).to eq 0
      expect(arithmetic.subtract(Float::INFINITY, 0)).to eq Float::INFINITY
      expect(arithmetic.subtract(Float::INFINITY, Float::INFINITY)).to be_nan
    end
  end
 end
end
