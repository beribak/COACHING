class AnswersController < ApplicationController
  def create
    @answer = Answer.new(answer_params)
    @question = Question.find(params[:question_id])
    @answer.question = @question
    @answer.user = current_user
    @lesson = Lesson.find(@question.lesson.id)

    @booking = Booking.create!(status: false, user_id: current_user.id, lesson_id: @lesson.id)

    if @answer.save
      redirect_to lesson_path(@lesson)
    else
      render template: "lessons/show"
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:content)
  end
end
