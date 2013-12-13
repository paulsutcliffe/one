class CreateListas < ActiveRecord::Migration
  def change
    create_table :listas do |t|
      t.belongs_to :usuario
      t.belongs_to :evento

      t.timestamps
    end
  end
end
