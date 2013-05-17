class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :note
      t.references :user, index: true
      t.references :board, index: true

      t.timestamps
    end
  end
end
