module RahyabRails
  class Number < ActiveRecord::Base
    belongs_to :user
    validates :number, presnce: true
  end
end
