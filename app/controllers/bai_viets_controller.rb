class BaiVietsController < ApplicationController
  def index
  	@bai_viets = BaiViet.all
  end
end
