class CreateNhanXets < ActiveRecord::Migration[5.0]
  def change
    create_table :nhan_xets do |t|
      t.string :ten
      t.text :noi_dung
      t.integer :bai_viet_id
      t.date :ngay_tao
    end
  end
end
