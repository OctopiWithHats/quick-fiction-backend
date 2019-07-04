class Ending < ApplicationRecord
  has_many :prompts
  has_many :stories
end
