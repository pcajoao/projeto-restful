class Api::V1::QuestionController < ApplicationController

    before_action :find_question, only: [:show, :edit, :update, :destroy]
    
    # /api/v1/formulary/:formulary_id/question
    def index
        @question = Question.where(formulary_id: params[:formulary_id])
        render json: @question
    end
    
    # GET /api/v1/formulary/:formulary_id/question/:id
    def show
        @question = Question.find(params[:id])
        render json: @question
    end
    
    # /api/v1/formulary/:formulary_id/question
    def create
        @question = Question.new(question_params.merge(formulary_id: params[:formulary_id]))

        if @question.save             
            render json: @question
        else            
            render json: { error: 'Não foi possível criar a questão.' }, status: 400
        end

        @visit 
    end
    
    # PUT /api/v1/formulary/:formulary_id/question/:id
    def update
        @question = Question.find(params[:id])
        if @question
            @question.update(question_params)          
            render json: { message: 'Questão atualizada com sucesso.' }, status: 200
        else            
            render json: { message: 'Não foi possivel atualizar a questão.' }, status: 400
        end
    end
      
    # DELETE /api/v1/formulary/:formulary_id/question/:id
    def destroy
        @question = Question.find(params[:id])
        if @question
            @question.destroy
            render json: { message: 'Questão deletada com sucesso.' }, status: 200
        else
            render json: { error: 'Não foi possível deletar a questão.' }, status: 400
        end
    end
      
    private

    def question_params
        params.require(:question).permit(:nome, :formulary_id, :tp_pergunta)
    end

    def find_question
        @question = Question.find(params[:id])
    end

end