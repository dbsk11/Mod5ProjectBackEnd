class Conversation < ApplicationRecord
  belongs_to :student
  belongs_to :teacher

  def date_created
    self.created_at.strftime("%B %e, %Y at %I:%M %p" )
  end

  def scheduled_date
    self.office_hours_date
    byebug 
  end

end


# def simple_date
#   if (self.date === null)
#       return ""
#   end 
# self.date.strftime("%B %e, %Y")
# end