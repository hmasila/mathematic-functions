class ArithmeticsController < ApplicationController
	before_action :verify_input

	def average
		result = @input.inject{ |sum, el| sum + el }.to_f / @input.size

		render json: result, status: 200
	rescue
		render json: {"message": 'Use the format: {"input": [num, num]}'}, status: 400
	end

	def median
	  sorted = @input.sort
	  len = sorted.length
	  result = (sorted[(len - 1) / 2] + sorted[len / 2]) / 2.0

	  render json: result, status: 200
	rescue
		render json: {"message": 'Use the format: {"input": [num, num]}'}, status: 400
	end

	# Returns the value that occurs most often.
	# If no number in the list is repeated, then it returns the first number.
	def mode
		freq = @input.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
	  result = @input.max_by { |v| freq[v] }

	  render json: result, status: 200
	rescue
		render json: {"message": 'Use the format: {"input": [num, num]}'}, status: 400
	end

	# Returns the difference between the largest and smallest values.
	def range
	  result = @input.max - @input.min

	  render json: result, status: 200
	rescue
		render json: {"message": 'Use the format: {"input": [num, num]}'}, status: 400
	end

	def factorial
	  result = (1..@input).reduce(:*) || 1

	  render json: result, status: 200
	rescue
		render json: {"message": 'Use the format: {"input": num}'}, status: 400
	end

	# Returns X to the power N
	def power
		result = @input[0] ** @input[1]

	  render json: result, status: 200
	rescue
		render json: {"message": 'Use the format: {"input": [num, power]}'}, status: 400
	end

	# Returns the absolute of X
	def abs
		result = @input.abs

	  render json: result, status: 200
	rescue
		render json: {"message": 'Use the format: {"input": num}'}, status: 400
	end

	# Returns 1 divided by the number
	def reciprocal
		result = 1/@input

	  render json: result, status: 200
	rescue
		render json: {"message": 'Use the format: {"input": num}'}, status: 400
	end

	# x = how far along
	# m = Slope or Gradient (how steep the line is)
	# b = value of y when x=0
	# Returns mx + b
	def linear
		result = @input[0] * @input[1] + @input[2]

	  render json: result, status: 200
	rescue
		render json: {"message": 'Use the format: {"input": [m, x, b]}'}, status: 400
	end

	# Returns the value of e^value.
	# It takes value in range [-inf, +inf] and returns the answer in range [0, infinity].
	def exp
		result = Math.exp(@input)

	  render json: result, status: 200
	rescue
		render json: {"message": 'Use the format: {"input": num}'}, status: 400
	end

	# The erf() function in Ruby returns the error function of x.
	# It accepts value in the range [-inf, +inf] and returns value in the range [-1, +1].
	def erf
		result = Math.erf(@input)

	  render json: result, status: 200
	rescue
		render json: {"message": 'Use the format: {"input": num}'}, status: 400
	end

	# The erfc() function in Ruby returns the complementary error function of x.
	# It accepts value in the range [-inf, +inf] and returns value in the range [0, 2].
	def erfc
		result = Math.erf(@input)

	  render json: result, status: 200
	rescue
		render json: {"message": 'Use the format: {"input": num}'}, status: 400
	end

	# Returns a two-element array containing the normalized fraction
	# which is a float value and an exponent that is an integer value of the given number.
	# On equating, fraction ** (2 ^ exponent) gives back the number.
	def frexp
		result = Math.frexp(@input)

	  render json: result, status: 200
	rescue
		render json: {"message": 'Use the format: {"input": num}'}, status: 400
	end

	# Returns the value of fraction * (2^exponent) when fraction and exponent
	# are given as parameters. The fraction is a float value and the exponent is an integer.
	def ldexp
		result = Math.ldexp(@input)

	  render json: result, status: 200
	rescue
		render json: {"message": 'Use the format: {"input": [fraction, exponent]}'}, status: 400
	end

	# Returns sqrt(l^2 + b^2) when l and b are given as parameters.
	# It eventually returns the hypotenuse of a right-angled triangle with sides l and b.
	def hypotenuse
		result = Math.hypot(@input)

	  render json: result, status: 200
	rescue
		render json: {"message": 'Use the format: {"input": [length, base]}'}, status: 400
	end

	# Returns the logarithm value of X. The second parameter is the base given by
	# the user to which the logarithm value is returned.
	# In case its not given, then the default base is e.
	def log
		if @input.is_a? Array
			result = Math.log(@input[0], @input[1])
		else
			result = Math.log(@input)
		end

	  render json: result, status: 200
	rescue
		render json: {"message": 'Use the format: {"input": num} or {"input": [num, base]}'}, status: 400
	end

	# Returns two numbers, one represents the logarithmic gamma
	# of value while the other signifies the sign of gamma of value.
	def lgamma
		result = Math.lgamma(@input)

	  render json: result, status: 200
	rescue
		render json: {"message": 'Use the format: {"input": num}'}, status: 400
	end

	# Returns the cosine value of a given angle expressed in radians
	# which is in range [-inf, +inf]. The returned value is in range [-1, +1].
	def cos
		result = Math.cos(@input)

	  render json: result, status: 200
	rescue
		render json: {"message": 'Use the format: {"input": num}'}, status: 400
	end

	# Returns the sine of a given angle expressed in radians
	# which is in range [-inf, +inf]. The returned value is in range [-1, +1].
	def sin
		result = Math.sin(@input)

	  render json: result, status: 200
	rescue
		render json: {"message": 'Use the format: {"input": num}'}, status: 400
	end

	# Returns the tangent of a given angle expressed in radians
	# which is in range [-inf, +inf]. The returned value is in range [-inf, +inf].
	def tan
		result = Math.tan(@input)

	  render json: result, status: 200
	rescue
		render json: {"message": 'Use the format: {"input": num}'}, status: 400
	end

	# Returns the the hyperbolic cosine of value given in radians.
	# The value passed is in range [-inf, +inf]. The returned value is in range [1, +inf].
	def cosh
		result = Math.cosh(@input)

	  render json: result, status: 200
	rescue
		render json: {"message": 'Use the format: {"input": num}'}, status: 400
	end

	# Returns the inverse cosine of a number (argument) in radians.
	# The value which is returned by the acos() function always lies between –pi to +pi.
	def acos
		result = Math.acos(@input)

	  render json: result, status: 200
	rescue
		render json: {"message": 'Use the format: {"input": num}. Value should be between -1 and +1.'}, status: 400
	end

	# Returns the inverse hyperbolic cosine of an angle given in radians.
	def acosh
		result = Math.acosh(@input)

	  render json: result, status: 200
	rescue
		render json: {"message": 'Use the format: {"input": num}'}, status: 400
	end

	# Returns the arc sine of a number means give a sin value to this function
	# it will return the angle in radian corresponding to that value.
	# The value passed is in between -1 and +1.
	def asin
		result = Math.asin(@input)

	  render json: result, status: 200
	rescue
		render json: {"message": 'Use the format: {"input": num}. Value should be between -1 and +1.'}, status: 400
	end

	private
	def verify_input
		@input = params[:input]
		if @input.nil?
			render json: {"message": 'Add input param to your request.}'}, status: 400
			return
		end
	end
end