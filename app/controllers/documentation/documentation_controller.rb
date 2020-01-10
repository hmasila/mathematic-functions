class Documentation::DocumentationController < ApplicationController
	def index
		path = File.join(File.dirname(__FILE__), 'api_docs.json')
		data = File.read(path)
		render json: JSON.parse(data).to_json, status: 201
	end
end