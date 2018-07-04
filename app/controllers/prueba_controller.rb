class PruebaController < ApplicationController
  protect_from_forgery with: :null_session
  skip_before_action :verify_authenticity_token

  def create
    puts prueba_params[:id].to_s

    puts "recibe post"

    redirect_to "https://jsonplaceholder.typicode.com/posts/"+prueba_params[:id].to_s

  end

  private

    def prueba_params
      params.require(:prueba).permit(:id)
    end
end
