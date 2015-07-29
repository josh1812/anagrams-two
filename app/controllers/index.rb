get '/:input' do
  # Look in app/views/index.erb
  input = params[:input] + "\n"

  @anagram = Word.anagrams_for(input)

  erb :index
end

# get '/chicken' do
#   erb :index
# end
