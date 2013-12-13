class CreateInvitados < ActiveRecord::Migration
  def change
    create_table :invitados do |t|
      t.string :nombre
      t.belongs_to :lista

      t.timestamps
    end
  end
end
