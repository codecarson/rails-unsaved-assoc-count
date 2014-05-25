class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.references :selected, index: true
      t.references :question, index: true

      t.timestamps
    end
  end
end
