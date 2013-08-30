get '/' do
	@notes = Note.order("created_at DESC")
  erb :index
end

post '/create' do
	Note.create(params[:post])
	redirect to ('/')
end

get '/edit' do
	@note = Note.find(params[:note_id])
	erb :edit
end

put '/edit' do
	p params[:id]
	p params[:post]
	changed_note = Note.find(params[:id])
	changed_note.title = params[:title]
	changed_note.content = params[:content]
	changed_note.save
	redirect to('/')
end

get '/delete' do
	@note = Note.find(params[:note_id])
	erb :delete
end

delete '/delete' do
	p params[:id]
	Note.find(params[:id]).destroy
	redirect to('/')
end