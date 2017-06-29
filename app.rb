require('sinatra')
require('sinatra/reloader')
require('descriptive_statistics')
require('./lib/ping_pong')
also_reload('lib/**/*.rb')

  get('/') do
    erb(:index)
  end

  get('/result') do
   @number = params.fetch('number').to_i.ping_pong
   erb(:result)
 end
