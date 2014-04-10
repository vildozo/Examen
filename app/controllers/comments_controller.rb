class CommentsController < ApplicationController
	skip_before_filter :verify_authenticity_token

	def create
    if params.has_key?(:post)
    @post.update(params[:post].permit(:texto))
    redirect_to '/posts'
	end
end
end
