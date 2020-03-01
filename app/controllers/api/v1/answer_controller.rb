class Api::V1::AnswerController < ApplicationController
    before_action :find_answer, only: [:show, :update, :destroy]
     # GET /api/v1/visit/:visit_id/formulary/:formulary_id/question/:question_id/answer
    def index
        @answer = Answer.where(visit_id: params[:visit_id], formulary_id: params[:formulary_id], question_id: params[:question_id])
        render json: @answer
    end
    # GET /api/v1/visit/:visit_id/formulary/:formulary_id/question/:question_id/answer/:id
    def show
        render json: @answer
    end
    # GET /api/v1/visit/:visit_id/formulary/:formulary_id/question/:question_id/answer/new
    def create
        @answer = Answer.new(answer_params.merge(visit_id: params[:visit_id], formulary_id: params[:formulary_id], question_id: params[:question_id]))
        if @answer.save
            render json: @answer
        else
            render json: { error: 'Não foi possível salvar a resposta nova.'}, status: 400
        end
    end
    # PUT /api/v1/visit/:visit_id/formulary/:formulary_id/question/:question_id/answer/:id
    def update
        if @answer
            @answer.update(answer_params)
            render json: { message: 'Resposta atualizada com sucesso.' }, status: 200
        else
            render json: { error: 'Não foi possível atualizar a resposta.' }, status: 400
        end
    end
    # DELETE /api/v1/visit/:visit_id/formulary/:formulary_id/question/:question_id/answer/:id
    def destroy
        if @answer
            @answer.destroy
            render json: { message: 'Resposta deletada com sucesso.' }, status: 200
        else
            render json: { error: 'Não foi possível deletar a resposta.' }, status: 400
        end
    end

    private

    def answer_params
        params.require(:answer).permit(:content, :formulary_id, :question_id, :visit_id, :answered_at)
    end

    def find_answer
        @answer = Answer.find(params[:id])
    end
end
