class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :content
      t.integer :vote_count, :null => false, :default => 0
      t.integer :user_id
      t.integer :question_id

      t.timestamps
    end
  end
end
