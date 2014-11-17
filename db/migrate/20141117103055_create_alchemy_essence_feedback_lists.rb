class CreateAlchemyEssenceFeedbackLists < ActiveRecord::Migration
  def change
    create_table :alchemy_essence_feedback_lists do |t|
      t.integer :per_page, :null => false, :default => 10

      t.timestamps
    end
  end
end
