class PruebaController < ApplicationController
  protect_from_forgery with: :null_session
  skip_before_action :verify_authenticity_token

  def create
    puts prueba_params[:id].to_s

    HTTParty.post('https://jsonplaceholder.typicode.com/posts/'+prueba_params[:id].to_s, body: { id: prueba_params[:id].to_s }.to_json, headers: { 'Content-Type' => 'application/json' })
  end

  private

    def prueba_params
      params.require(:prueba).permit(:id)
    end
end
