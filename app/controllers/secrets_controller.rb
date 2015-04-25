class SecretsController < ApplicationController
	before_action :find_secret, only: [:show, :edit, :update, :destroy]

	def index
		if params[:sxoleio].blank?
			@secrets = Secret.all.order("created_at DESC").paginate(page: params[:page], per_page: 4)
		else
			@sxoleio_id = Sxoleio.find_by(name: params[:sxoleio]).id
			@secrets = Secret.where(sxoleio_id: @sxoleio_id).order("created_at DESC").paginate(page: params[:page], per_page: 4)
		end
	end

	def show		
	end

	def new
		@secret = Secret.new
	end

	def create
		@secret = Secret.new(secrets_params)

		if @secret.save
			redirect_to root_path, notice: "Succesfully created new Secret"
		else
			render "New"
		end

	end

	def edit
	end

	def update
		if @secret.update(secrets_params)
			redirect_to @secret, notice: "Secret was succesfully updated!"
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
		params.require(:secret).permit(:title, :description, :sxoleio_id)
	end

	def find_secret
		@secret = Secret.find(params[:id])
	end

end
