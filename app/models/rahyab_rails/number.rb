module RahyabRails
  class Number < ActiveRecord::Base
    belongs_to :user, class_name: '::Faalis::User'

    validates :number, presence: true
  end
end
