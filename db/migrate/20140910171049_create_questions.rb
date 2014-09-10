class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :content
      t.integer :vote_count, :null => false, :default => 0
      t.integer :user_id
      t.timestamps
    end
  end
end
