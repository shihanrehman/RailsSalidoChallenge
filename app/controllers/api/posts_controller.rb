class Api::PostsController < ApplicationController
	skip_before_filter :verify_authenticity_token
	def index
		render json: Post.all  #curl localhost:3000/api/posts.json, this is used to see all the posts get method
	end

	def show
		post = Post.find(params[:id])
		render json: post #curl http://localhost:3000/api/posts/1.json
	end

	def create
		post  = Post.new(list_params)  #curl -i -H "Accept: application/json" -H "Content-type: application/json" -X POST -d '{"name":"Martini"}' http://localhost:3000/api/posts
		 if post.save
		      render json: {
		      status: 200,
		      message: "Successfully created Post.",
		      post: post
		    }.to_json
		 else
		    render json: {
		      status: 500,
		      errors: post.errors
		    }.to_json
		 end
	end

	def update
		post = Post.find(params[:id])	#curl -i -H  "Accept: application/json" -H "Content-type: application/json" -X PUT -d '{"name":"Vodka1"}' http://localhost:3000/api/posts/15.json
		if post.update(list_params)
			render json: {
				status: 200,
				message: "Successfully updated",
				post: post
			}.to_json
		else
			render json: {
				status: 500,
				message: "The post could not be updated",
				post: post
			}.to_json
		end
	end


	def destroy
		post = Post.find(params[:id])	#curl -i -H "Accept: application/json" -H "Content-type: application/json" -X DELETE -d '{"name":""}' http://localhost:3000/api/posts/12.json
		post.destroy
		render json: {
			status: 200,
			message: "Successfully deleted post"
			}.to_json
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
