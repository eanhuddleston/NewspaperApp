class User < ActiveRecord::Base
  attr_accessible :name, :subscription_plan_ids

  validates :name, :presence => true

  has_many :subscriptions

  has_many :subscription_plans, :through => :subscriptions
end
