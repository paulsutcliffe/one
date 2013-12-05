class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :titulo
      t.string :flyer
      t.date :fecha
      t.string :link

      t.timestamps
    end
  end
end
