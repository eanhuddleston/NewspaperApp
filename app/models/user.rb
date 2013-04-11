# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :name, :subscription_plan_ids

  validates :name, :presence => true

  has_many :subscriptions

  has_many :subscription_plans, :through => :subscriptions
end
