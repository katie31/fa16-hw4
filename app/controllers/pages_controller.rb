class PagesController < ApplicationController
  def home
    @cats = Cat.all
    @users = User.all
    @todos = Todo.all
  end

  def new
  end

  def create
  	# rails g migration AddGenreToAlbum genre:string ADDS A COLUMN TO TABLE and run 'rake db:migrate'
  	Cat.create(
  		:name=> params[:name])

    User.create(
      :name=> params[:name],
      :email=> params[:email],
      :age=> params[:age])
  

    Todo.create(
      :tasks=> params[:tasks],
      :finished=> params[:finished])
    redirect_to '/'
  end
end