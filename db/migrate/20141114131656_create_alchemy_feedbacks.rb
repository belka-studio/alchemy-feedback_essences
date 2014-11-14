class CreateAlchemyFeedbacks < ActiveRecord::Migration
  def change
    create_table :alchemy_feedbacks do |t|
      t.string :name
      t.text :text, :null => false, :default => ''
      t.boolean :approved, :null => false, :default => false
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
