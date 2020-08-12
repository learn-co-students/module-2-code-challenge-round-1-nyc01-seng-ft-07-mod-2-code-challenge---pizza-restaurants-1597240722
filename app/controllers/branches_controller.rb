class BranchesController < ApplicationController
    def new
        @branch=Branch.new
    end
    
    def create
        @branch=Branch.create(branch_params)
        if @branch.valid?
            redirect_to restaurant_path(@branch.restaurant)
        else
            flash[:errors]=@branch.errors.full_messages
            redirect_to new_branch_path(@branch)
        end
    end

    private
    def branch_params
        params.require(:branch).permit(:price,:pizza_id,:restaurant_id)
    end

end
