class CommentsController < ApplicationController
  before_action :set_pet
  
  def new
    @comment = Comment.new
  end
  
  def create
    @comment = @pet.comments.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to pet_path(@pet)
    else
      render :new
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:body)
    end

    def set_pet
      @pet = Pet.find(params[:pet_id])
    end

end
