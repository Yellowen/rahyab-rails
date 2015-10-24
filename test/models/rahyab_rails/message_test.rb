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

require 'test_helper'

module RahyabRails
  class MessageTest < ActiveSupport::TestCase
    # test "the truth" do
    #   assert true
    # end
  end
end
