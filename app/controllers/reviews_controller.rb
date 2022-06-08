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


  def render_stars(value)
    output = ''
    if (1..5).include?(value.floor)
      value.floor.times { output += image_tag('star.gif')}
    end
    if value == (value.floor + 0.5) && value.to_i != 5
      output += image_tag('half-star.gif')
    end
    output.html_safe
  end

  private

  def review_params
    params.require(:review).permit(:description, :rating)
  end
end
