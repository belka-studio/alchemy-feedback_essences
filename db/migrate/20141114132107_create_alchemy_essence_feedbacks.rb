class CreateAlchemyEssenceFeedbacks < ActiveRecord::Migration
  def change
    create_table :alchemy_essence_feedbacks do |t|
      t.integer :per_page, :null => false, :default => 10

      t.timestamps
    end
  end
end
