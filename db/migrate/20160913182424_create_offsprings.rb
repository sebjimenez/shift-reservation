class CreateOffsprings < ActiveRecord::Migration[5.0]
  def change
    create_table :offsprings do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age

      t.timestamps
    end
  end
end
