class AddStripeIdToPlans < ActiveRecord::Migration[6.1]
  def change
    add_column :plans, :stripe_price_id, :string
    add_column :plans, :string, :string
  end
end
