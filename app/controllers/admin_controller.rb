class AdminController < ApplicationController
	layout "admin"
  def index
  	if session[:user_id]
  		@bai_viets = BaiViet.joins(:tai_khoan, :the_loai).all
  	else
  		redirect_to '/trang-chu'
  	end
  end
  def new
  	@the_loais = TheLoai.all
  end
  def edit
  	@bai_viet = BaiViet.find(params[:id])
  	@the_loais = TheLoai.all
  end
end
