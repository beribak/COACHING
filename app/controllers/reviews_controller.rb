class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @lesson = Lesson.find(params[:lesson_id])
    @review.lesson = @lesson
    if @review.save
      redirect_to "/dashboard"
    else
      flash[:alert] = "Something went wrong."
      render "pages/dashboard"
    end
  end

  def avg_rating
    @review.average(:rating)
  end



  private

  def review_params
    params.require(:review).permit(:description, :rating)
  end
end
