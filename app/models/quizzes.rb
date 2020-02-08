class Quizzes < ApplicationRecord
  
  has_many :answers
  has_many :users, through: :answers
  
end
