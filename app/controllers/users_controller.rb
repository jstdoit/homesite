class UsersController < ApplicationController
  def create
		@user = User.new params[:user]
		if @user.save
			redirect_to :action => :index
		else
			respond_to do |format|
				format.html { render }
			end
		end
  end

	def new
		@user = User.new

		respond_to do |format|
			format.html { render }
		end
	end

	def index
		@users = User.all

		respond_to do |format|
			format.html { render }
		end
	end

	def show
		begin
			@user = User.find params[:id]
			respond_to do |format|
				format.html { render }
			end
		rescue => e
			redirect_to :action => :index
		end
	end
end
