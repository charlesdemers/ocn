module App
  class UsersController < AppController
    before_action :fetch_user, only: [:show]

    # GET /users/:username
    def show
    end

  protected

    def fetch_user
      @user = User.where(username: params[:id]).first!
    end

  end
end
