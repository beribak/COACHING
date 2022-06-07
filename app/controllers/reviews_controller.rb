class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @lesson = Lesson.find(params[:lesson_id])
    @review.lesson = @lesson
    @review.save
    redirect_to lesson_path(@lesson)
  end

  private

  def review_params
    params.require(:review).permit(:description, :rating)
  end
end
