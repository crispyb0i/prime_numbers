require('sinatra')
require('sinatra/reloader')
require('./lib/prime_numbers')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/prime') do
  @prime = (params.fetch('prime_form')).to_i.prime()
  erb(:prime)
end
