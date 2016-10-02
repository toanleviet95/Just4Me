class TaiKhoansController < ApplicationController
	def login
		username = params[:username]
		password = params[:password]
		if TaiKhoan.exists?(username: username, password: password)
			user = TaiKhoan.where(username: username).where(password: password).first
			session[:user_id] = user.id
			redirect_to "/admin"
		else
			redirect_to "/trang-chu"
		end
	end
	def logout
		session.delete(:user_id)
		redirect_to "/trang-chu"
	end
end
