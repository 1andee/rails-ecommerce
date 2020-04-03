class ReviewsController < ApplicationController

  before_action :require_login

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.create(review_params)
    @review.user = current_user

    if @review.save
      flash[:success] = "Review added!"
      redirect_back(fallback_location: root_path)
    else
      flash[:danger] = "Something blew up. Sorry about that."
      redirect_back(fallback_location: root_path)
    end

  end

  def destroy
    @review = Review.find params[:id]
    @review.destroy
    flash[:danger] = "Review deleted!"
    redirect_back(fallback_location: root_path)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :description)
  end

end
