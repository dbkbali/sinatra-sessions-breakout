# Homepage (Root path)
# 
helpers do
  #current_user = User.find(session[:current_user]) if session[:current_user]
end



get '/' do
  @message = session.delete(:message) if session[:message]
  @todos = Todo.all
  erb :index
end

post '/todos' do
  @todo = Todo.new(params[:todo])
  if @todo.save
    redirect '/'
  else
    session[:message] = "there was an error - fields blank"
    redirect '/'
  end
end
