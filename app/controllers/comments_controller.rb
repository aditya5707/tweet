class CommentsController < ApplicationController
#  def index
#     @com = Blogg.all
#    logger.info "helooooooooooooooooooooooooooooo"
#  end


#def index
#    @user = Blogg.all
#    respond_to do |format|
#      format.html
#      end
#  end


 def create
    @user = Blogg.find(params[:blogg_id])
    @comment = @user.comments.create(params[:content])
    redirect_to blog_path(@user)
  end

   def destroy
      logger.info "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@222222222222222222222222222222221111111"
      @comment = Comment.find(params[:id])
     @comment.destroy
     redirect_to blogs_path
   end





end

=begin
  def create
    @user = Blogg.find(params[:blogg_id])
    @comment = @user.comments.create(params[:comment])
    redirect_to blogs_path(@user)
  end

  def destroy
    @user= Blogg.find(params[:blogg_id])
    @comment = @user.comments.find(params[:id])
    @comment.destroy
    redirect_to blogs_path(@user)
  end
end
=end