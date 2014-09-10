class AnswersController < ApplicationController
  def index
  end

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.new(answer_params)
    if @answer.save
      respond_to do |format|
        format.html { redirect_to question_url(@question), notice: "Please enter a valid question"}
        format.js
      end
    end
  end

  def show
    @question = Question.find(params[:question_id])
    @answer = @question.answer.new(answer_params)
    @vote = Vote.new
  end

  private
  def answer_params
    params.require(:answer).permit(:id, :content, :question_id).merge(user_id: current_user.id, question_id: @question.id)
  end
end
