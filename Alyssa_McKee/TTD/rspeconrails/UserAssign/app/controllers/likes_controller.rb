class LikesController < ApplicationController
	def create
			user = current_user
			#TODO check if secret exists
			secret = Secret.find(params[:secret_id])
				
			Like.create(user: user, secret: secret) unless Like.find_by(user: user, secret: secret)
				
		return redirect_to secrets_path
	end
	def destroy
		@user = current_user
		like = Like.find_by(secret_id: params[:secret_id], user: @user)
		
		like.destroy if like
		
		redirect_to :back
	end

end
