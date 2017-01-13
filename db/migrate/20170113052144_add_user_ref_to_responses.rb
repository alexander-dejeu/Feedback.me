class AddUserRefToResponses < ActiveRecord::Migration[5.0]
  def change
    add_reference :responses, :user, foreign_key: true
  end
end
