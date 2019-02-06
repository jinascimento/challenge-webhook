class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.json :body
      t.integer :event

      t.timestamps
    end
  end
end
