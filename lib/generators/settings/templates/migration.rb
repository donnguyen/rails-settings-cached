class CreateSettings < ActiveRecord::Migration<%= migration_version %>
  def self.up
    create_table :settings do |t|
      t.string  :var,        null: false
      t.text    :value,      null: true
      t.string  :file
      t.string  :data_type
      t.timestamps
    end

    add_index :settings, %i(var), unique: true
  end

  def self.down
    drop_table :settings
  end
end
