class Story < ApplicationRecord
  #belongs_to :prompt
  #belongs_to :user
  belongs_to :beginning
  belongs_to :ending
end
