class Teacher < ApplicationRecord
    has_many :teacher_classes 
    has_many :classes, through: :teacher_classes
    has_many :conversations, -> {order(created_at: :desc)}
    has_many :students, through: :conversations
    has_secure_password
    validates :username, uniqueness: true

    def display_name
        "Professor #{self.first_name} #{self.last_name}"
    end

end
 