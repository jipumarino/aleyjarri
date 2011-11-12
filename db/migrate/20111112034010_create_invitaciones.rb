class CreateInvitaciones < ActiveRecord::Migration
  def change
    create_table :invitaciones do |t|

      t.timestamps
    end
  end
end
