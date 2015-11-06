module Api
  class UsersController < Api::BaseController

    private

      def user_params
        params.require(:user).permit(:email, :name, :country)
      end

      def query_params
        params.permit(:email, :name, :country)
      end

  end
end