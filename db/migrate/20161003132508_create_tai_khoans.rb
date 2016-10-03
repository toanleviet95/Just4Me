class CreateTaiKhoans < ActiveRecord::Migration[5.0]
  def change
    create_table :tai_khoans do |t|
      t.string :username
      t.string :password
    end
  end
end
