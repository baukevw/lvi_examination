class CreateInspections < ActiveRecord::Migration[6.0]
  def change
    create_table :inspections do |t|
      t.references :client, null: false, foreign_key: true
      t.integer :project_number
      t.string :project_name
      t.datetime :inspection_date
      t.string :inspection_address_street
      t.string :inspection_address_number
      t.string :inspection_address_zipcode
      t.string :inspection_address_city
      t.string :contact_person_name
      t.string :contact_person_phone
      t.string :contact_person_email
      t.string :report_compiler
      t.datetime :release_date
      t.boolean :approved
      t.string :building_image

      t.timestamps
    end
  end
end
