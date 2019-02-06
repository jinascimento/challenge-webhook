class CreateWebhooks < ActiveRecord::Migration[5.1]
  def change
    create_table :webhooks do |t|
      t.json :body
      t.string :event

      t.timestamps
    end
  end
end
