class AddAttachmentImageToShares < ActiveRecord::Migration
  def self.up
    change_table :shares do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :shares, :image
  end
end
