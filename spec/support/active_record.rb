require 'active_record'

ActiveRecord::Base.establish_connection adapter: "sqlite3", database: ":memory:"

ActiveRecord::Migrator.up "db/migrate"

ActiveRecord::Migration.create_table :auctions do |t|
  t.string :name
  t.datetime :start_at
  t.datetime :close_at
  t.integer :pet_id

  t.timestamps
end

ActiveRecord::Migration.create_table :subscribers do |t|
  t.string :event_name
  t.string :type

  t.timestamps
end

ActiveRecord::Migration.create_table :pets do |t|
  t.integer :awesomeness
  t.string :type


  t.timestamps
end

ActiveRecord::Migration.create_table :arbitrary_models do |t|
  t.integer :awesomeness

  t.timestamps
end
