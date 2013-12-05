class CreateMixes < ActiveRecord::Migration
  def change
    create_table :mixes do |t|
      t.string :soundcloud_link

      t.timestamps
    end
  end
end
