class ClientsController < ApplicationController

    def index
        clients = Client.all
        render json: clients
    end

    def login
        client = Client.find_by(email: params[:email])
        if client && client.authenticate(params[:password])
   
        render json: client
        else
        render json: {errors:["Invalid username or password"]}
        end
    end

    # def signup
    #     client = Client.create(client_params)
    #     if client.valid?
    #     render json: client
    #     else
    #     render json: {errors: client.errors.full_messages}
    #     end
    # end

    def create
        client = Client.create(client_params)
        render json: client
    end

    def show
        client = Client.find(params[:id])
        render json: client
    end

    def update
        client = Client.find(params[:id])
        client.update(client_params)
        render json: client
    end

    def destroy
        client = Client.find(params[:id])
        client.destroy
        render json: client
    end

    private
    def client_params

    params.permit(:company_name, :email, :password, :is_admin)
    end

end
