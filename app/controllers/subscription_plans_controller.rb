class SubscriptionPlansController < ApplicationController
  def new
    @subscription_plan = SubscriptionPlan.new
    @subscription_plan.newspaper_id = params[:newspaper_id]
  end

  def create
    @subscription_plan = SubscriptionPlan.new(params[:subscription_plan])
    if @subscription_plan.save
      redirect_to subscription_plans_url
    else
      render :new
    end
  end
end
