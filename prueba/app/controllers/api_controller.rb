require 'net/http'
require 'json'

class ApiController < ApplicationController
  def consume_api
    word = 'hello'  # La palabra que deseas buscar en el diccionario

    url = URI.parse("https://api.dictionaryapi.dev/api/v2/entries/en/#{word}")
    http = Net::HTTP.new(url.host, url.port)
    request = Net::HTTP::Get.new(url)
    response = http.request(request)

    if response.code == '200'
      data = JSON.parse(response.body)
      # Aquí puedes trabajar con los datos de la API
      render json: data
    else
      # Manejo de errores si la respuesta no es 200 OK
      render json: { error: 'Error en la solicitud a la API' }, status: :bad_request
    end
  end
end
