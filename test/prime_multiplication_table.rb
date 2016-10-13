require 'minitest/autorun'
require 'prime_multiplication_table'

class PrimeMultiplicationTableTest < Minitest::Test
	def test_first_0
	    assert_equal [[""]],
	      PrimeMultiplicationTable.first_n(0)
  	end

  	def test_first_1
  		result = [[ "", 2], 
  		         [  2,  4]]
	    assert_equal result,
	      PrimeMultiplicationTable.first_n(1)
  	end

  	def test_first_2
  		result = [["", 2, 3],
  				  [ 2, 4, 6],
  				  [ 3, 6, 9]]
	    assert_equal result,
	      PrimeMultiplicationTable.first_n(2)
  	end

  	def test_first_3
  		result = [["",  2,   3,   5 ],
  				  [ 2,  4,   6,   10],
  				  [ 3,  6,   9,   15],
  				  [ 5,  10,  15,  25]]
	    assert_equal result,
	      PrimeMultiplicationTable.first_n(3)
  	end

  	def test_first_4
  		result = [["",  2,   3,   5,    7  ],
  				  [ 2,  4,   6,   10,   14 ],
  				  [ 3,  6,   9,   15,   21 ],
  				  [ 5,  10,  15,  25,   35 ],
  				  [ 7,  14,  21,  35,   49 ]]
	    assert_equal result,
	      PrimeMultiplicationTable.first_n(4)
  	end

  	def test_first_0_primes
  		assert_equal [],
	      PrimeMultiplicationTable.first_n_primes(0)
  	end

  	def test_first_1_primes
  		assert_equal [2],
	      PrimeMultiplicationTable.first_n_primes(1)
  	end

  	def test_first_2_primes
  		assert_equal [2, 3],
	      PrimeMultiplicationTable.first_n_primes(2)
  	end

  	def test_first_10_primes_default
  		assert_equal [2, 3, 5, 7, 11, 13, 17, 19, 23, 29],
	      PrimeMultiplicationTable.first_n_primes
  	end

  	def test_first_20_primes
  		result = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31,
  			      37, 41, 43, 47, 53, 59, 61, 67, 71]
  		assert_equal result,
	      PrimeMultiplicationTable.first_n_primes(20)
  	end

  	def test_first_30_primes
  		assert_equal 30,
	      PrimeMultiplicationTable.first_n_primes(30).size
  	end


  	def test_first_40_primes
  		assert_equal 40,
	      PrimeMultiplicationTable.first_n_primes(40).size
  	end

  	def test_first_100_primes
  		assert_equal 100,
	      PrimeMultiplicationTable.first_n_primes(100).size
  	end

end