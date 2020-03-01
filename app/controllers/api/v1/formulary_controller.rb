class Api::V1::FormularyController < ApplicationController

    # GET /formulary
    def index
        @formulary = Formulary.all
        render json: @formulary
    end

    # GET /formulary/
    def show
        @formulary = Formulary.find(params[:id])
        render json: @formulary
    end

    # POST /formulary/
    def create
        @formulary = Formulary.new(formulary_params)
        if @formulary.save
            render json: @formulary
        else
            render json: { error: 'Não foi possível criar o formulário.' }, status: 400
        end
    end

    # PUT /formulary/
    def update
        @formulary = Formulary.find(params[:id])
        if @formulary
            @formulary.update(formulary_params)
            render json: { message: 'Formulário atualizado com sucesso.' }, status: 200
        else
            render json: { error: 'Não foi possível atualizar o formulário.' }, status: 400
        end
    end

    # DELETE /formulary/
    def destroy
        @formulary = Formulary.find(params[:id])
        if @formulary
            @formulary.destroy
            render json: { message: 'Formulário deletado com sucesso.' }, status: 200
        else
            render json: { error: 'Não foi possível deletar o formulário.' }, status: 400
        end
    end

    private

    def formulary_params
        params.require(:formulary).permit(:nome)
    end

end