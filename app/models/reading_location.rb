class ReadingLocation < ActiveRecord::Base
  belongs_to :book
  belongs_to :location
end
