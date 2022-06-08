class LessonsController < ApplicationController
  def index

    category = Category.find_by(name: params[:category])

    if params[:category].present? && params[:city].present?
      lessons_city = Lesson.near(params[:city], 20)
      lessons_cat  = Lesson.where(category: category)

      @lessons = []
      Lesson.all.each do |lesson|
        @lessons << lesson if (lessons_cat.include?(lesson) && lessons_city.include?(lesson))
      end
    elsif params[:city].present?
      @lessons = Lesson.near(params[:city], 20)
    elsif params[:category].present?
      @lessons = Lesson.where(category: category)
    else
      @lessons = Lesson.all
    end

    @markers = @lessons.map do |lesson|
      {
        lat: lesson.latitude,
        lng: lesson.longitude
      }
    end
  end

  def new
    @lesson = Lesson.new
  end

  def show
    @lesson = Lesson.find(params[:id])
    @answer = Answer.new
    @questions = @lesson.questions
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @lesson.user = current_user
    if @lesson.save
      redirect_to new_lesson_question_path(@lesson)
    else
      render :new
    end
  end

  private

  def lesson_params
    params.require(:lesson).permit(:title, :description, :places, :start_date, :end_date, :category_id, :address, :photo)
  end
end
