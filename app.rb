require('sinatra')
require('sinatra/reloader')
require('./lib/numbers_to_words')

get('/') do
  erb(:index)
end

get('/result') do
  @integer = params.fetch('number')
  @number = params.fetch('number').numbers_to_words()
  erb(:result)
end
