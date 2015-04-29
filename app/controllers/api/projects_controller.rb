module Api
  class ProjectsController < Api::BaseController

    private

      def project_params
        params.require(:project).permit(:title)
      end

      def query_params
        # this assumes that an album belongs to an artist and has an :artist_id
        # allowing us to filter by this
        params.permit(:user_id, :title)
      end

  end
end