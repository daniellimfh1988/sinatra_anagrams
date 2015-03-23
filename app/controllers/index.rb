get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/chicken' do
  "Show a list of anagrams for chicken"
end

get '/anagrams' do #'/anagrams' refers to the internet address which is "http://localhost:9393/anagrams"
  @anagrams = Word.anagrams(params[:user_input])

  erb :index
end

#address = http://localhost:9393/?anagrams