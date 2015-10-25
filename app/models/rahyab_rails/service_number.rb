# == Schema Information
#
# Table name: rahyab_rails_service_numbers
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  number     :string
#  lock       :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

module RahyabRails
  class ServiceNumber < ActiveRecord::Base
    belongs_to :user, class_name: 'Faalis::User'
  end
end
