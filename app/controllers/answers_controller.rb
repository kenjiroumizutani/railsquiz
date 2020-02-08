class AnswersController < ApplicationController
  
  # def new
  #   @question = Quizzes.find(params[:quizzes_id])
  #   @answer = Answer.new
  #   @answer.quizzes_id = @quizzes_id
  # end

  
  def edit
    @quiz = Quizzes.find(params[:id])
    @answer = @quiz.users
  end
  
  def update
    @quiz = Quizzes.find(params[:id])
    @quiz.update(quizzes_params) 
    # (questions_params)はしたの記述に由来している。answer以外の内容はストロングパラメータではじくよ
  end
  
  private
  def quizzes_params
    params.permit(:answer,:comment)
  end
  
end
