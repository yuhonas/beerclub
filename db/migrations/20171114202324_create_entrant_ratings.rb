Hanami::Model.migration do
  change do
    create_table :entrant_ratings do
      primary_key :id
      foreign_key :entrant_id, :entrants, on_delete: :cascade, null: false
      foreign_key :user_id,    :users, on_delete: :cascade, null: false
      index [:entrant_id, :user_id], unique: true

      column :rating,     BigDecimal,  null: false
      column :created_at, DateTime,    null: false
      column :updated_at, DateTime,    null: false
    end
  end
end
