class Reservation < ActiveRecord::Base
  belongs_to :book
end
