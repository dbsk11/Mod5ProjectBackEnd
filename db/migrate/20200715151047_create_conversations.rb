class CreateConversations < ActiveRecord::Migration[6.0]
  def change
    create_table :conversations do |t|
      t.belongs_to :student, null: false, foreign_key: true
      t.belongs_to :teacher, null: false, foreign_key: true
      t.string :klass
      t.string :topic
      t.string :urgency
      t.boolean :office_hours
      t.string :description
      t.boolean :teacher_response
      t.string :response
      t.string :time

      t.timestamps
    end
  end
end
