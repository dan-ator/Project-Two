class Location < ActiveRecord::Base
  has_many :reports # should this be dependant destroy?
end
