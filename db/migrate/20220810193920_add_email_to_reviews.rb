class AddEmailToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :email, :string
  end
end
