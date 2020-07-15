class CreateStudentClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :student_classes do |t|
      t.belongs_to :student, null: false, foreign_key: true
      t.belongs_to :teacher_class, null: false, foreign_key: true

      t.timestamps
    end
  end
end
