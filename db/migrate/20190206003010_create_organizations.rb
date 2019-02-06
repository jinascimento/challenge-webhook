class CreateOrganizations < ActiveRecord::Migration[5.1]
  def change
    create_table :organizations do |t|
      t.json :body
      t.references :event

      t.timestamps
    end
  end
end
