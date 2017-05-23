require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    'Hello World! again... and again'
  end

  run! if app_file == $0

end
