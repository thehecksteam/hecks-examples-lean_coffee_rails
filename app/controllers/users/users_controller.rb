module Users
  class UsersController < ApplicationController
    def new
      @user = Domain[:Users].build(name: nil)
    end

    def create
      foo = params.permit(users_user: {})[:users_user].to_h
      user = Domain[:Users].build(
        name: foo[:name]
      )

      Domain[user].save
      redirect_to users_user_path(user.id)
    end

    def show
      foo = params.permit(:id)
      @domain_object = Domain[:Users].fetch(foo[:id])
    end
  end
end
