class CreateSenders < ActiveRecord::Migration[5.1]
  def change
    create_table :senders do |t|
      t.json :body
      t.references :webhook
      t.timestamps
    end
  end
end
