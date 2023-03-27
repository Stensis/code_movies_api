class DramasController < ApplicationController
    def index
        @dramas = Drama.all
        render json: @dramas
    end

end
