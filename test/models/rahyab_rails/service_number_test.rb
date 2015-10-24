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

require 'test_helper'

module RahyabRails
  class ServiceNumberTest < ActiveSupport::TestCase
    # test "the truth" do
    #   assert true
    # end
  end
end
