class BaiVietsController < ApplicationController
  def index
  	@bai_viets = BaiViet.joins(:tai_khoan).paginate(:page => params[:page], :per_page=>2)
  end
  def show
  	@bai_viet = BaiViet.joins(:tai_khoan).find_by_id(params[:id])
  	@bai_viet_lien_quans =  BaiViet.where(the_loai_id: @bai_viet.the_loai_id).where.not(id: @bai_viet.id).all
    @nhan_xets = NhanXet.where(bai_viet_id: @bai_viet.id).all
  end
  def create
  	if session[:user_id]
	  	hinh_anh = 'bai_viet_' + rand(1..3).to_s + '.jpg'
	  	ngay_dang = DateTime.now.to_date
	  	result = BaiViet.create(tieu_de: params[:TieuDe], tom_tat: params[:TomTat], noi_dung: params[:NoiDung], hinh_anh: hinh_anh, tai_khoan_id: session[:user_id], the_loai_id: params[:TheLoai], ngay_dang: ngay_dang)
	  	redirect_to '/admin'
  	else
  		redirect_to '/trang-chu'
  	end  
  end
  def update
    if session[:user_id]
      bai_viet = BaiViet.find_by_id(params[:id])
      result = bai_viet.update(tieu_de: params[:TieuDe], tom_tat: params[:TomTat], noi_dung: params[:NoiDung], the_loai_id: params[:TheLoai])
      redirect_to '/admin'
    else
      redirect_to '/trang-chu'
    end  
  end
  def delete
    if session[:user_id]
      bai_viet = BaiViet.find_by_id(params[:id])
      result = bai_viet.destroy
      redirect_to '/admin'
    else
      redirect_to '/trang-chu'
    end  
  end
end
