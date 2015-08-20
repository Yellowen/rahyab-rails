module RahyabRails
  class SMS < ActiveRecord::Base
    validates :source, :destination, :text, :status, presence: true
  end
end
