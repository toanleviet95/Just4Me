class NhanXetsController < ApplicationController
	def create
		bai_viet_id = params[:bai_viet_id]
		if params[:HoTen]!='Họ tên...' and params[:NoiDung]!='Bình luận của bạn'
			ngay_tao = DateTime.now.to_date
		  	result = NhanXet.create(ten: params[:HoTen], noi_dung: params[:NoiDung], bai_viet_id: bai_viet_id, ngay_tao: ngay_tao)
	  	end
	  	redirect_to '/bai-viet/'+bai_viet_id
	end
end
