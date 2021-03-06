class CommentsController < ApplicationController
	

	def new
		@comment = Comments.new
	end


	def create
		@post = Post.find(params[:post_id])
		#private var name posted
		#new instance of class Post
		#invoked method find
		#the params 
		if @post.comments.create(comment_params)
			redirect_to @post,
						notice: 'Comment was successfully created'
		else
			redirect_to @post,
						alert: 'Error creating comment.'
		end
	end
	
	private

	#this method under private is used because of
	#Strong Paramaters, pg 55 of book.
	def comment_params
		params.require(:comment).permit(:author,:body)
	end


end


