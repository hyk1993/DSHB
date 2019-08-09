class CreateLoves < ActiveRecord::Migration[5.2]
  def change
    create_table :loves do |t|
      t.string :content
      t.integer :gender
      t.integer :ask
      t.integer :attitude

      t.timestamps
    end
  end
end
