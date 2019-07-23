class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.string :name
      t.text   :text
      t.text   :image1
      t.text   :image2
      t.timestamps null: true
    end
  end
end
