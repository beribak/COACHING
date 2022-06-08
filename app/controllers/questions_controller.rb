class QuestionsController < ApplicationController
  def new
    @question = Question.new
    @questions = Question.where(lesson_id: params[:lesson_id])
  end

  def create
    @question = Question.new(question_params)
    @lesson = Lesson.find(params[:lesson_id])
    @question.lesson = @lesson
    if @question.save
      if @lesson.questions.count <= 2
        redirect_to new_lesson_question_path(@lesson)
      else
        redirect_to dashboard_path
      end
    else
      render :new
    end
  end

  private

  def question_params
    params.require(:question).permit(:content)
  end
end
