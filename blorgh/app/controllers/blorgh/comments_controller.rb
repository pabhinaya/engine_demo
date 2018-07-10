require_dependency "blorgh/application_controller"

module Blorgh
  class CommentsController < ApplicationController
    
    def create
      debugger
      @post = Post.find(params[:post_id])
      @comment = @post.comments.build(params[:comment])
      @comment.save
      flash[:notice] = "Comment has been created!"
      redirect_to posts_path
    end
  end
end
