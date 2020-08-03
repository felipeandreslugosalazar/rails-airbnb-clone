class LookalikesController < ApplicationController
    def index
        @lookalikes = Lookalike.all
    end

    def show
        @lookalike = Lookalike.find(params[:id])
    end

    def new
        @lookalike = Lookalike.new
    end

    def create
        @lookalike = Lookalike.new(lookalike_params)
        @lookalike.save
    end

    private

    def lookalike_params
        params.require(:lookalike).permit(:celeb_name)
    end
end
