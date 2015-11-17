class Report < ActiveRecord::Base
  belongs_to :location
  belongs_to :user
  has_many :info_items, dependent: :destroy
end
