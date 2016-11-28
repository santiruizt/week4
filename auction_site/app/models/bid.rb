class Bid < ApplicationRecord
  belongs_to :user
  belongs_to :product

  def expired_time
    
  end

end
