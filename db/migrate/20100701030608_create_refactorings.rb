class CreateRefactorings < ActiveRecord::Migration
  def self.up
    create_table :refactorings do |t|
      t.text :body
      t.text :comment
      t.integer :snippet_id
      t.string :language
      t.integer :user_id
      t.integer :karma

      t.timestamps
    end
  end

  def self.down
    drop_table :refactorings
  end
end
