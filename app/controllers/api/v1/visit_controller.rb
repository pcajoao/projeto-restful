class Api::V1::VisitController < ApplicationController

    before_action :find_visit, only: [:show, :edit, :update, :destroy]
    
    # /api/v1/user/:user_id/visit
    def index
        @visit = Visit.where(user_id: params[:user_id])
        render json: @visit
    end
    
    # GET /user/:user_id/visit
    def show
        render json: @visit
    end
    
    # POST /user/:user_id/visit
    def create

         @visit = Visit.new(visit_params.merge(user_id: params[:user_id]))

        if @visit.save
            render json: @visit
        else
            render json: { error: 'Não foi possível criar a visita.' }, status: 400
        end
    end
    
    # PUT /user/:user_id/visit/:id
    def update
        @visit = Visit.find(params[:id])
        if @visit
            @visit.update(visit_params)
            render json: { message: 'Visita atualizada com sucesso!' }, status: 200
        else
            render json: { error: 'Não foi possível atualizar a visita.' }, status: 400
        end
    end
      
    # DELETE /user/:user_id/visit/:id
    def destroy
        @visit = Visit.find(params[:id])
        if @visit
            @visit.destroy
            render json: { message: 'Visita deletada com sucesso.' }, status: 200
        else
            render json: { error: 'Não foi possível deletar a visita.' }, status: 400
        end
    end
      
    private

    def visit_params
        params.require(:visit).permit(:data, :status, :user_id, :checkin_at, :checkout_at)
    end

    def find_visit
        @visit = Visit.find(params[:id])
    end

end