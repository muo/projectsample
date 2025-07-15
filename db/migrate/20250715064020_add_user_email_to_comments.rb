class AddUserEmailToComments < ActiveRecord::Migration[7.2]
  def change
    add_column :comments, :user_email, :string
  end
end
