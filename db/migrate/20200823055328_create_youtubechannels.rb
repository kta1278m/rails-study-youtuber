class CreateYoutubechannels < ActiveRecord::Migration[6.0]
  def change
    create_table :youtubechannels do |t|
      t.string :url
      t.integer :subscriber
      t.references :youtuber, null: false, foreign_key: true

      t.timestamps
    end
  end
end
