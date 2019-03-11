class CreateResults < ActiveRecord::Migration[5.1]
  def change
    create_table :results do |t|
      t.string :student_number
      t.integer :points

      t.timestamps
    end
  end
end
