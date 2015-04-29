class CreateShares < ActiveRecord::Migration
  def change
    create_table :shares do |t|
      t.string :artist
      t.string :album
      t.string :url
    end
  end
end
