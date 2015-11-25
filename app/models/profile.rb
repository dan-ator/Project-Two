class Profile < ActiveRecord::Base
  belongs_to :user
  # you could add a validation here to prevent duplicate profiles, something like:
  # validates :user_id, uniqueness: true

end
