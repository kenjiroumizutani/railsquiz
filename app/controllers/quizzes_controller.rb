class QuizzesController < ApplicationController

  def index
    @quiz = Quizzes.all
  end

  def new
    @quiz = Quizzes.find(params[:id])
    @answer = Answers.new
    @answer.quizzes_id = @quizzes_id
  end

  
  def edit
    @quiz = Quizzes.find(params[:quizzes_id])
    @answer = Answers.create(create_params)
    @answer.quizzes_id = @quizzes_id
  end
  
  def update
    @quiz = Quizzes.find(params[:quizzes_id])
    @answer = Answers.create(update_params)
    @answer.quizzes_id = @quizzes_id
    @quiz.update(quizzes_params) 
    # (questions_params)はしたの記述に由来している。answer以外の内容はストロングパラメータではじくよ
  end
  
  private
  def quizzes_params
    params.require(:answer).permit(:answer,:comment,:quizzes_id, ).merge(user_id: current_user.id)
  end
  
  def create_params
    params.require(:answer).permit(:answer,:comment,:quizzes_id, ).merge(user_id: current_user.id)
  end
  
  def update_params
    params.require(:answer).permit(:answer,:comment,:quizzes_id, ).merge(user_id: current_user.id)
  end
  
end
