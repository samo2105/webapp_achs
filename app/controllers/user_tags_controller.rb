class UserTagsController < ApplicationController

  class AssignmentsController < ApplicationController
    before_action :set_user_tag, only: [:show, :edit, :update, :destroy]
    
    # GET /assignments
    # GET /assignments.json
    def index
      @tag = Tag.all
      @user = User.all
    end
    
    # GET /assignments/1
    # GET /assignments/1.json
    def show
    end
    
    # GET /assignments/new
    def new
      @user_tag = User_tag.new
    end
    
    # GET /assignments/1/edit
    def edit
    end
    
    # POST /assignments
    # POST /assignments.json
    def create
      @user_tag = User_tag.new(user_tag_params)
      
      respond_to do |format|
        if @user_tag.save
          format.html { redirect_to @user_tag.project, notice: 'Assignment was successfully created.' }
          format.json { render :show, status: :created, location: @assignment }
        else
          format.html { render :new }
          format.json { render json: @user_tag.errors, status: :unprocessable_entity }
        end
      end
    end
    
    # PATCH/PUT /user_tags/1
    # PATCH/PUT /user_tags/1.json
    def update
      respond_to do |format|
        if @user_tag.update(user_tag_params)
          format.html { redirect_to @user_tag, notice: 'user_tag was successfully updated.' }
          format.json { render :show, status: :ok, location: @user_tag }
        else
          format.html { render :edit }
          format.json { render json: @user_tag.errors, status: :unprocessable_entity }
        end
      end
    end
    
    # DELETE /user_tags/1
    # DELETE /user_tags/1.json
    def destroy
      @user_tag.destroy
      respond_to do |format|
        format.html { redirect_to @user_tag.project, notice: 'user_tag was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
    
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_tag
      @user_tag = user_tag.find_by(find_by_params)
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_tag_params
      params.require(:user_tag).permit(:user_id, :tag_id)
    end
  
    def find_by_params
      params.permit(:user_id, :tag_id)
    end
  
  end
  
end
