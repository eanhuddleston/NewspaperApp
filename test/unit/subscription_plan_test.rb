# == Schema Information
#
# Table name: subscription_plans
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  price        :integer
#  daily        :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  newspaper_id :integer
#

require 'test_helper'

class SubscriptionPlanTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
