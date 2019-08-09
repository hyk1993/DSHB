class CreateLovings < ActiveRecord::Migration[5.2]
  def change
    create_table :lovings do |t|
      t.string :content
      t.integer :gneder
      t.integer :ask
      t.integer :attitude

      t.timestamps
    end
  end
end
