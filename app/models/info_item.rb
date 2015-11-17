class InfoItem < ActiveRecord::Base
  belongs_to :report
  has_many :comments, dependent: :destroy
end
