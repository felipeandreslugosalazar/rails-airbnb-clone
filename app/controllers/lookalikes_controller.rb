class LookalikesController < ApplicationController
    def index
        @lookalikes = policy_scope(Lookalike).order(created_at: :desc)
    end

    def show
        @lookalike = Lookalike.find(params[:id])
        authorize @lookalike
    end

    def new
        @lookalike = Lookalike.new
        authorize @lookalike
    end

    def create
        @lookalike = Lookalike.new(lookalike_params)
        @lookalike.user = current_user
        authorize @lookalike
        @lookalike.save
        redirect_to @lookalike
    end

    private

    def lookalike_params
        params.require(:lookalike).permit(:celeb_name, :description, :price, :photo)
    end
end
