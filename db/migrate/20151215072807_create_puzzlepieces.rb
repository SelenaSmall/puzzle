class CreatePuzzlepieces < ActiveRecord::Migration
  def change
    create_table :puzzlepieces do |t|
      t.integer :number

      t.timestamps null: false
    end
  end
end
