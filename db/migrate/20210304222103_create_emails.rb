class CreateEmails < ActiveRecord::Migration[6.1]
  def change
    create_table :emails do |t|
      t.string :sender
      t.string :text

      t.timestamps
    end
  end
end
