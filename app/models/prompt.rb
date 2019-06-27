class Prompt < ApplicationRecord
  belongs_to :beginning
  belongs_to :ending
  has_many :stories

end
