class Api::MenusController < ApplicationController
  before_action :set_diner

    def index
      render json: @diner.menus
    end

    def create
      @menu =@diner.menus.new(menu_params)
      if @menu.save
        render json: @menu
      else
        render json: { errors: @menu.erros }, status: :uprocessable_entity
      end
    end

    def update
      @menu =@diner.menus.find(params[:id])
      if @menu.update(menu_params)
        render json: @menu
      else
        render json: { errors: @menu.erros }, status: :uprocessable_entity
      end
    end

    def destroy
      @menu =@diner.menus.find(params[:id]).destroy
      render json: { message: 'menu deleted' }
    end

  private

    def menu_params
        params.require(:menu).permit(:title)
    end

    def set_diner 
      @diner = Diner.find(params[:diner_id])
    end


end
