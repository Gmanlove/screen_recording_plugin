class CreateRecordings < ActiveRecord::Migration[7.0]
  def change
    create_table :recordings do |t|
      t.text :content

      t.timestamps
    end
  end
end
