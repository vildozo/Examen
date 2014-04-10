class PostsController < ApplicationController
	skip_before_filter :verify_authenticity_token

	def index
		@posts=Post.all
	end

	def admi
		@posts=Post.all 
	end

	def new
		@posts = Post.new
	end

	def create
		@posts = Post.new
		@posts.title=params[:post][:title]
		@posts.text=params[:post][:text]
		@posts.category=params[:post][:category]
		@posts.save
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		@post.title = params[:post][:title]
		@post.text = params[:post][:text]
		@post.category = params[:post][:category]
	
		
		if @post.save
			redirect_to '/posts'
		else
			render 'edit'
		end	
			
	end

	def report
		@posts = Post.all
	end

	def delete
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to '/posts/admi'
	end

	def likes
		@post= Post.find(params[:id])
		if @post.likes==nil
    		@post.likes=0
    	end
    	@post.likes=@post.likes+1
    	@post.save
    	redirect_to "/posts"
	end

	def dislikes
		@post= Post.find(params[:id])
		if @post.likes==nil
    		@post.likes=0
    	elsif @post.likes>0		
	    	@post.likes=@post.likes-1
    	else
    		@post.likes=0
    	end
    		@post.save
    		redirect_to "/posts"
	end


	def show
		@post= Post.find(params[:id])
	end



end
