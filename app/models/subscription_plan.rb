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

class SubscriptionPlan < ActiveRecord::Base
  attr_accessible :daily, :price, :title, :newspaper_id

  validates :price, :title, :newspaper_id, :presence => true

  validates_inclusion_of :daily, :in => [true, false]

  belongs_to :newspaper, :inverse_of => :subscription_plans

  has_many :users, :through => :subscriptions

end
