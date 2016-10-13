require 'terminal-table'


class PrimeMultiplicationTable

  # Print first n prime numbers and their multiplication table
  #
  # Example:
  #   >> PrimeMultiplicationTable.first_n
  #   => [   ["", 2, 3],
  #          [ 2, 4, 6],
  #          [ 3, 6, 9]    ]
  #
  # Arguments:
  #   n: (Integer)


  def self.is_prime?(n)
    # Takes a number as import and returns if it's prime
    #
    # Example:
    #   >> self.is_prime?(3)
    #   => true
    #
    # Arguments:
    #   n: (Integer)
    #
    # Runtime: O(log(n)) because O(sqrt(n)) ~= O(log(n))

    return false if n < 2

    for i in (2..Math.sqrt(n).to_i)
      return false if n % i == 0
    end
    true
  end

  def self.first_n_primes(n=10)
    # Returns first n prime numbers
    #
    # Example:
    #   >> self.is_prime?(3)
    #   => true
    #
    # Arguments:
    #   n: (Integer)
    # 
    # Runtime: O(plog(p)) where p is the highest prime number for n.
    # log(p) comes from having to check if each number is prime

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
    # Returns multiplication table of first n prime numbers. [0, 0] is a spacer
    # to allow [1, 1] to be the result of the first prime number times the first
    # prime number. Any non-zero m, n is the result of the nth prime number
    # times the mth prime number.
    #
    # Example:
    #   >> self.first_n_primes(2)
    #   => [ ["", 2, 3],
    #        [ 2, 4, 6],
    #        [ 3, 6, 9]]
    #
    # Arguments:
    #   n: (Integer)
    #   (default: 10)
    # 
    # Runtime: O(n^2) Where n is the number of prime numbers. We have to loop through
    # all the numbers for each row. Also we must take into account that we first have 
    # to find the prime numbers. So the real run time is O(n^2 + plog(p)) where p is
    # the highest prime number

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