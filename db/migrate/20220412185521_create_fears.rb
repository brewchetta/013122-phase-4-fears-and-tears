class CreateFears < ActiveRecord::Migration[7.0]
  def change
    create_table :fears do |t|
      t.string :name
      t.integer :person_id

      t.timestamps
    end
  end
end
