
class AlternatingCharacters

  def run
    puts "Enter the number of test cases"
    num_cases = gets.chomp.to_i
    
    for i in (1..num_cases)
      puts "Enter the AB string sequence"
      sequence = gets.chomp.split("")
      self.alternate_check(sequence)
    end
  end

  def alternate_check(sequence)
    i = 0
    j = 1
    num_deletions = 0;
    while sequence.length > 1 && j != sequence.length
      if sequence[i] == sequence[j]
        sequence.delete_at(j)
        num_deletions += 1
      else
        i += 1
        j += 1
      end
    end
    puts num_deletions
  end
end