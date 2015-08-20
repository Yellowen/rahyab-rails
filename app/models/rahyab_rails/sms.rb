module RahyabRails
  class SMS < ActiveRecord::Base
    validates :number, :text, :status, presence: true
  end
end
