class CreatePuzzleskeletons < ActiveRecord::Migration
  def change
    create_table :puzzleskeletons do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
