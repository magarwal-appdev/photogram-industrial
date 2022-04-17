class CreateFollowRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :follow_requests do |t|
      t.references :recipient, null: false, foreign_key: { to_table: : user}
      t.references :sender, null: false, foreign_key: { to_table: : user}
      t.string :status, default: "pending"

      t.timestamps
    end
  end
end
