class CreateAuspiciadores < ActiveRecord::Migration
  def change
    create_table :auspiciadores do |t|
      t.string :logo
      t.string :link

      t.timestamps
    end
  end
end
