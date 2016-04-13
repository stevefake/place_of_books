class Book < ActiveRecord::Base
  has_many :reservations
  def book(title)
    @book = title
  end
end
