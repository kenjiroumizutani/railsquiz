class CreateQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :quizzes do |t|
      t.integer :category
      t.string :title
      t.text :questions
      t.text :choice1
      t.text :choice2
      t.text :choice3
      t.text :answer
      t.text :c_answer
      t.text :comment
      t.timestamps
    end
  end
end
