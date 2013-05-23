class CreateNgUsers < ActiveRecord::Migration
  def change
    create_table :ng_users do |t|
      t.references :user, index: true
      t.integer :distinationUser

      t.timestamps
    end
  end
end
