class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.integer :status, default: 0
      t.references :sender, references: :users
      t.references :receiver, references: :users

      t.timestamps
    end
  end
end
