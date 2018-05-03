#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:barbershop.db"

class Client < ActiveRecord::Base
end

class Barber < ActiveRecord::Base
end

before do
	@barbers = Barber.all
end

get '/' do
	# @barbers = Barber.all
	# @barbers = Barber.order "created_at DESC"
	erb :index
end

get '/visit' do
	erb :visit
end

post '/visit' do

	@username = params[:username]
	@phone = params[:phome]
	@datetime = params[:datetime]
	@barber = params[:barber]
	@color = params[:color]

	Client.create(
	:name => "#{@username}",
	:phome => "#{@phone}",
	:datestamp => "#{@datetime}",
    :barber => "#{@barber}",
    :color => "#{@color}")

	erb "<h2>Спасибо, вы записались!</h2>"
end

get '/contacts' do
	erb :newcont
end

post '/contacts' do

	@username = params[:username]
	@phone = params[:phone]

	Contact.create(
	:name => "#{@username}",
	:phone => "#{@phone}")

	@message = 'Спасибо, в течение 5 минут мы свяжемся с вами'
end
