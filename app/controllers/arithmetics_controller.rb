class ArithmeticsController < ApplicationController
	def mean
		arr = params[:array]
		ans = arr.inject{ |sum, el| sum + el }.to_f / arr.size

		render json: ans, status: 200
	end
end