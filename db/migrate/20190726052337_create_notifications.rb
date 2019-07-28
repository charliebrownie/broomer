class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.integer :visiter_id, null:false
      t.integer :visited_id, null:false
      t.integer :tweet_id
      t.integer :comment_id
      t.string :action
      t.boolean :checked, default: false

      t.timestamps
    end
  end
end
