require 'spec_helper'
require 'stringio'

describe AlternatingCharacters do
  before :each do 
    @ac = AlternatingCharacters.new
  end
  
  describe '#run' do
    it 'should ask the user for test cases' do
      expect {@ac.run}.to output('Enter the number of test cases'+ "\n").to_stdout
    end
    it 'should accept a string for analysis' do
      @ac.run
      @ac.stub(:gets){"1"}
      expect{@ac.run}.to output('Enter the number of test cases'+"\n" + "Enter the AB string sequence" + "\n").to_stdout
    end
  end

  describe '#alternate_check' do
    it 'should return the number of deletions' do
      expect{@ac.alternate_check(['a','b','b','b','a'])}.to output("2\n").to_stdout
    end
  end
end