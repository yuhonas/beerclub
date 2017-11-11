Hanami::Model.migration do
  change do
    create_table :users do
      primary_key :id

      column :nickname,  String, null: false, size: 255
      column :name,      String, null: false, size: 255
      column :github_id, String, null: false, size: 255
      column :image_url, String, null: false, size: 255
      
      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end