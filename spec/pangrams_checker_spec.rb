require 'spec_helper'
require 'stringio'

describe PangramsChecker do
  
  before :each do
    @pc = PangramsChecker.new
  end

  it 'should accept an input' do
    @pc.stub(:gets) {"penguin banana limousine"}
    expect(@pc.get_input).to eq("penguin banana limousine")
  end

  it 'should return "pangrams" if string is a pangram' do
    @pc.stub(:gets) {"zxcvbnmasdfghjklqwertyuiop"}
    @pc.get_input
    expect(@pc.pangram_check).to eq("pangram")
  end

  it 'should return "not pangram" if string is not a pangram' do
     @pc.stub(:gets) {"this is not a pangram"}
     @pc.get_input
     expect(@pc.pangram_check).to eq("not pangram")
  end

end
