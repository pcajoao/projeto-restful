class Api::V1::UserController < ApplicationController

    # GET /user
    def index
        @user = User.all
        render json: @user
    end

    # GET /user/
    def show
        @user = User.find(params[:id])
        render json: @user
    end

    # POST /user/
    def create
        @user = User.new(user_params)
        if @user.save
            render json: @user 
        else
            render error: { error: 'Não foi possível criar o usuário.' }, status: 400 
        end
    end

    # PUT /user/
    def update
        @user = User.find(params[:id])
        if @user
            @user.update(user_params)
            render json: { message: 'Usuário atualizado com sucesso.' }, status: 200
        else
            render json: { error: 'Não foi possível atualizar o usuário.' }, status: 400
        end
    end

    # DELETE /user/
    def destroy
        @user = User.find(params[:id])
        if @user
            @user.destroy
            render json: { message: 'Usuário deletado com sucesso.' }, status: 200
        else
            render json: { error: 'Não foi possível deletar o usuário.' }, status: 400
        end
    end

    private

    def user_params
        params.require(:user).permit(:nome, :senha, :email, :cpf)
        #params.permit(:nome, :senha, :email, :cpf)
    end

end
