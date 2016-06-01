class PangramsChecker

  attr_accessor :input, :output
  
  def pangram_check()
    input = @input.downcase.gsub(/\W/,'').split("").uniq
    input.length == 26 ? @output = "pangram" : @output = "not pangram"
    output
  end

  def get_input
    @input = gets.chomp
  end

end
