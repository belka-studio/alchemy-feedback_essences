class CreateAlchemyEssenceFeedbacks < ActiveRecord::Migration
  def change
    create_table :alchemy_essence_feedbacks do |t|
      t.string :post_to, :null => false, :default => ''

      t.timestamps
    end
  end
end
