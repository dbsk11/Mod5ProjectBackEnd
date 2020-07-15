class CreateTeacherClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :teacher_classes do |t|
      t.belongs_to :teacher, null: false, foreign_key: true
      t.belongs_to :klass, null: false, foreign_key: true

      t.timestamps
    end
  end
end
