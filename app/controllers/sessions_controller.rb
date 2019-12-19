class SessionsController < ApplicationController
    def create
        name = params[:name]
        if name && !name.empty?
            session[:name] = name
            redirect_to '/'
        else
            redirect_to '/sessions/new'
        end
    end

    def destroy
        session[:name] = nil
    end

    def new

    end
end
