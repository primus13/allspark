module Api
  class ProjectsController < Api::BaseController

    private

      def project_params
        params.require(:project).permit(:title)
      end

      def query_params
        # this assumes that a project belongs to an user and has an :user_id
        # allowing us to filter by this
        params.permit(:user_id, :title)
      end

  end
end