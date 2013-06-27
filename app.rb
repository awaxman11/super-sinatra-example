require 'sinatra/base'

module SuperSinatra
  class App < Sinatra::Base

    get '/' do
      erb :'super_hero'
    end

    post '/team' do
      @team = params[:team]
      @members = params[:team][:members]
      erb :'team'
    end

    get '/team' do
      erb :'team'
    end  

  end
end