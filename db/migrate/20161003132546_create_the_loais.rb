class CreateTheLoais < ActiveRecord::Migration[5.0]
  def change
    create_table :the_loais do |t|
      t.string :ten_the_loai
    end
  end
end
