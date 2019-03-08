class CreateStudentAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :student_answers do |t|
      t.string :student_number
      t.references :answer, foreign_key: true

      t.timestamps
    end
  end
end
