module WeixinRailsMiddleware
  class DiymenusController < ApplicationController
    before_action :set_diymenu, only: [:show, :edit, :update, :destroy]

    # GET /diymenus
    def index
      @diymenus = Diymenu.all
    end

    # GET /diymenus/1
    def show
    end

    # GET /diymenus/new
    def new
      @diymenu = Diymenu.new
    end

    # GET /diymenus/1/edit
    def edit
    end

    # POST /diymenus
    def create
      @diymenu = Diymenu.new(diymenu_params)

      if @diymenu.save
        redirect_to @diymenu, notice: 'Diymenu was successfully created.'
      else
        render action: 'new'
      end
    end

    # PATCH/PUT /diymenus/1
    def update
      if @diymenu.update(diymenu_params)
        redirect_to @diymenu, notice: 'Diymenu was successfully updated.'
      else
        render action: 'edit'
      end
    end

    # DELETE /diymenus/1
    def destroy
      @diymenu.destroy
      redirect_to diymenus_url, notice: 'Diymenu was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_diymenu
        @diymenu = Diymenu.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def diymenu_params
        params.require(:diymenu).permit(:public_account_id, :parent_id, :title, :keyword, :is_show, :sort, :url)
      end
  end
end
