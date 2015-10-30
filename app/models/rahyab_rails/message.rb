# == Schema Information
#
# Table name: rahyab_rails_messages
#
#  id                :integer          not null, primary key
#  service_number_id :integer
#  user_id           :integer
#  destination       :text
#  text              :text
#  status            :string
#  delivered_at      :datetime
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

module RahyabRails
  class Message < ActiveRecord::Base
    belongs_to :service_number
    belongs_to :user, class_name: 'Faalis::User'

    def source_number
      service_number.number
    end
  end
end
