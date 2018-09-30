class CreatePotentialbuyers < ActiveRecord::Migration[5.2]
  def change
    create_table :potentialbuyers do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :house, foreign_key: true

      t.timestamps
    end
  end
end
