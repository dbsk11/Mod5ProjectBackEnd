class ConversationSerializer < ActiveModel::Serializer
    attributes :id, :student, :teacher, :klass, :topic, :urgency, :office_hours, :description, :teacher_response, :response, :time, :office_hours_date, :date_created, :acknowledged, :updated_at
end