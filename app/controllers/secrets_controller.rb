class SecretsController < ApplicationController
	before_action :find_secret, only: [:show, :edit, :update, :destroy]

	def index	
		@secrets = Secret.all.order("created_at DESC")
	end

	def show		
	end

	def new
		@secret = Secret.new
	end

	def create
		@secret = Secret.new(secrets_params)

		if @secret.save
			redirect_to @secret
		else
			render "New"
		end

	end

	def edit
	end

	def update
		if @secret.update(secrets_params)
			redirect_to @secret
		else
			render "Edit"
		end
	end

	def destroy
		@secret.destroy
		redirect_to root_path
	end

	private

	def secrets_params
		params.require(:secret).permit(:title, :description)
	end

	def find_secret
		@secret = Secret.find(params[:id])
	end

end
