class AddCompanyidToHouses < ActiveRecord::Migration[5.2]
  def change
    add_reference :houses, :company, index: true
  end
end
