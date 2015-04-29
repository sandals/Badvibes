class AddUserToShare < ActiveRecord::Migration
  def change
    add_reference :shares, :user, index: true, foreign_key: true
  end
end
