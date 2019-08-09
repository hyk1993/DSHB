class CreateChecks < ActiveRecord::Migration[5.2]
  def change
    create_table :checks do |t|
      t.string :first
      t.string :second
      t.string :third

      t.timestamps
    end
  end
end
