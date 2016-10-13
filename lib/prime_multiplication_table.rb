require 'terminal-table'


class PrimeMultiplicationTable
  def self.is_prime?(n)
    return false if n < 2

    for i in (2..Math.sqrt(n).to_i)
      return false if n % i == 0
    end
    true
  end

  def self.first_n_primes(n=10)
    num_primes = 0
    primes = []
    guess = 2
    
    
    while(num_primes < n)
      if self.is_prime?(guess)
        primes << guess
        num_primes += 1
      end
      
      guess += 1
    end
    
    return primes
  end

  def self.first_n(n=10)
    primes = self.first_n_primes(n)
    
    mult_table = []

    
    for x in (0...primes.size)
      mult_table[x+1] = []
      mult_table[x+1][0] = primes[x]
      for y in (0...primes.size)
        mult_table[x+1][y+1] = primes[x] * primes[y]
      end
    end
    
    mult_table[0] = []
    
    mult_table[0] = [''] + primes
    

    mult_table
  end

  def self.print_table(table)
    table = Terminal::Table.new rows: table
    puts table
  end
end