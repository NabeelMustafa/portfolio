class CreateMyimages < ActiveRecord::Migration[5.2]
  def change
    create_table :myimages do |t|
      t.text :image

      t.timestamps
    end
  end
end
