class Comment < ActiveRecord::Base
  belongs_to :info_item
  belongs_to :user
end
