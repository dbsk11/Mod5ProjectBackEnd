class Conversation < ApplicationRecord
  belongs_to :student
  belongs_to :teacher
end
