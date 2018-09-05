class WizardsController < ApplicationController
  before_action :load_user_wizard, except: %i(validate_step)

  def validate_step
    current_step = params[:current_step]

    @user_wizard = wizard_user_for_step(current_step)
    @user_wizard.user.attributes = user_wizard_params
    session[:user_attributes] = @user_wizard.user.attributes

    if @user_wizard.valid?
      next_step = wizard_user_next_step(current_step)
      create and return unless next_step

      redirect_to action: next_step
    else
      render current_step
    end
  end

  def create
    if @user_wizard.user.save
      #session[:user_attributes] = nil
      #redirect_to root_path, notice: 'User succesfully created!'
      #redirect_to thankyou_path, notice: 'THANK YOU FOR SUBMITTING'
      redirect_to coverage_redirect
    else
      redirect_to({ action: Wizard::User::STEPS.first }, alert: 'There were a problem when creating the user.')
    end
  end

  def coverage_redirect
    coverage = @user_wizard.user.coverage.to_i
    case coverage
    when 0...500000
      thankyou_path
    when 500000...750000
      thankyou2_path
    when 750000...1000000
      thankyou2_path
    else
      thankyou2_path
    end
  end

  private

  def load_user_wizard
    @user_wizard = wizard_user_for_step(action_name)
  end

  def wizard_user_next_step(step)
    Wizard::User::STEPS[Wizard::User::STEPS.index(step) + 1]
  end

  def wizard_user_for_step(step)
    raise InvalidStep unless step.in?(Wizard::User::STEPS)

    "Wizard::User::#{step.camelize}".constantize.new(session[:user_attributes])
  end

  def user_wizard_params
    params.require(:user_wizard).permit(:gender, :birthday, :zip_code, :tobacco, :coverage, :term)
  end

  class InvalidStep < StandardError; end
end
