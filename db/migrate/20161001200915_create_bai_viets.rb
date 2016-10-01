class CreateBaiViets < ActiveRecord::Migration[5.0]
  def change
    create_table :bai_viets do |t|
      t.string :tieu_de
      t.string :tom_tat
      t.text :noi_dung
      t.string :hinh_anh
      t.integer :tac_gia
      t.integer :the_loai
      t.date :ngay_dang
    end
  end
end
