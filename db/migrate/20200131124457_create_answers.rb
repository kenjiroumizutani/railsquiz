class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.integer :user_id
      t.integer :quizzes_id
      t.text :answers
      t.text :c_answers
      t.text :t_f
      t.timestamps
    end
  end
end
