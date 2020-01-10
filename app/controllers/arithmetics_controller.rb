class ArithmeticsController < ApplicationController
	def mean
		arr = params[:numbers]
		ans = arr.inject{ |sum, el| sum + el }.to_f / arr.size

		render json: ans, status: 200
	rescue
		render json: {"message": "An error occurred"}, status: 200
	end
end