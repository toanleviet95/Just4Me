class BaiVietsController < ApplicationController
  def index
  	@bai_viets = BaiViet.joins(:tai_khoan).paginate(:page => params[:page], :per_page=>2)
  end
  def show
  	@bai_viet = BaiViet.joins(:tai_khoan).find_by_id(params[:id])
  	@bai_viet_lien_quans =  BaiViet.where(the_loai_id: @bai_viet.the_loai_id).where.not(id: @bai_viet.id).all
  end
end
