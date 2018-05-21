class RemarksController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @remark = @post.remarks.create(remark_params)
    @remark.user_id = current_user.id
    @remark.save
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @remark = @post.remarks.find(params[:id])
    @remark.destroy
    redirect_to post_path(@post)
  end

    private
    def remark_params
      params.require(:remark).permit(:commenter, :comment)
    end

end
