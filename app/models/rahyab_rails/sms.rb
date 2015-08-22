module RahyabRails
  class SMS < ActiveRecord::Base
    enum status: [:success, :failed, :delivered]
    validates :source, :destination, :text, :status, presence: true
  end
end
