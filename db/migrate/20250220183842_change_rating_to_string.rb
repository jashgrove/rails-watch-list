class ChangeRatingToString < ActiveRecord::Migration[7.1]
  def change
    change_column :movies, :rating, :string
  end
end
