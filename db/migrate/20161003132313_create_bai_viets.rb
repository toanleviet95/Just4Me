class CreateBaiViets < ActiveRecord::Migration[5.0]
  def change
    create_table :bai_viets do |t|
      t.string :tieu_de
      t.string :tom_tat
      t.text :noi_dung
      t.string :hinh_anh
      t.integer :tai_khoan_id
      t.integer :the_loai_id
      t.date :ngay_dang
    end
    add_index :bai_viets, :tai_khoan
    add_index :bai_viets, :the_loai
  end
end
