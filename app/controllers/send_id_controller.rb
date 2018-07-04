class SendIdController < ApplicationController

  def send_json
    puts "Envia post"
    begin
      HTTParty.post('http://localhost:3000/prueba', body: { id: rand(1..100).to_s }.to_json, headers: { 'Content-Type' => 'application/json' }, timeout: 3)
    rescue Net::ReadTimeout
      nil
    end
  end

  def index

  end
end
