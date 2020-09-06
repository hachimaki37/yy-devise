# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user, notice: 'User was successfully created.'
    else
      render :new
    end
  end
end
