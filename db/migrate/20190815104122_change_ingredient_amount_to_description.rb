class ChangeIngredientAmountToDescription < ActiveRecord::Migration[5.2]
  def change
    change_column :doses, :ingredient_amount, :string
  end
end
