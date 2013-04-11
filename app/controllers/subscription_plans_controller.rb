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

  def edit
    @subscription_plan = SubscriptionPlan.find(params[:id])
  end

  def update
    @plan = SubscriptionPlan.find(params[:id])
    if @plan.update_attributes(params[:subscription_plan])
      redirect_to edit_subscription_plan_url(@plan)
    else
      render :edit
    end
  end
end
