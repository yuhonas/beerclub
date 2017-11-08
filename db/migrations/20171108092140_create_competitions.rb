Hanami::Model.migration do
  change do
    create_table :competitions do
      primary_key :id
      column :title,      String,   null: false, size: 255
      column :date_start, DateTime, null: false
      column :date_end,   DateTime, null: false
      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
