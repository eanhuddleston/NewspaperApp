# == Schema Information
#
# Table name: subscriptions
#
#  id                   :integer          not null, primary key
#  user_id              :integer
#  subscription_plan_id :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Subscription < ActiveRecord::Base
  attr_accessible :subscription_plan_id, :user_id

  belongs_to :user
  belongs_to :subscription_plan
end
