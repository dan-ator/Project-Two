class Comment < ActiveRecord::Base
  belongs_to :InfoItem
  belongs_to :User
end
