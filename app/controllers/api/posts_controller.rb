class Api::PostsController < ApplicationController
	skip_before_filter :verify_authenticity_token
	def index
		render json: Post.all  #localhost:3000/api/posts.json
	end

	def show
		post = Post.find(params[:id])
		render json: post
	end

	def create
		post  = Post.new(list_params)
		 if post.save
		      render json: {
		      status: 200,
		      message: "Successfully created Post.",
		      post: post
		    }.to_json
		 else
		    render json: {
		      status: 500,
		      errors: list.errors
		    }.to_json
		 end
	end

	private
		def list_params 
			params.require(:post).permit(:name, :price, :quantity)
		end
end



#In terminal, run curl http://localhost:3000/api/posts.json
#show, curl http://localhost:3000/api/posts/4.json
#curl -i -H 

=begin 
curl \
-H "Accept: application/json" \
-H "Content-type: application/json" \
-X POST \
-d '{"title":"The Title will go here"}' \
http://localhost:3000/api/todo_lists.json
=end
