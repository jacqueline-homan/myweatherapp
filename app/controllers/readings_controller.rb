require 'pp'

class ReadingsController < ApplicationController
	def create
		@reading = Reading.new(reading_params)
		display = ''
		if @reading.valid?
			display = 'valid'
			#serialize object into a cookie
			#...
			#redirect_to :show
		else
			display = @reading.errors.messages
	end

	def show
	end
end
