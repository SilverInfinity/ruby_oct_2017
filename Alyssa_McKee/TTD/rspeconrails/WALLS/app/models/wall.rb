class Wall < ActiveRecord::Base
  has_many :messages
  
end
