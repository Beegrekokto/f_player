class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
     t.string :name
     t.integer :age
     t.string :nationality
     t.text :wiki

      t.timestamps null: false
    end
  end
end
