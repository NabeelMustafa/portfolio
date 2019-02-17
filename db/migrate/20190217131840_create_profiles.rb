class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :name
      t.text :des
      t.string :loc
      t.string :dp
      t.string :from
      t.string :work
      t.string :cover

      t.timestamps
    end
  end
end
