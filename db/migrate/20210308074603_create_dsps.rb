class CreateDsps < ActiveRecord::Migration[6.1]
  def change
    create_table :dsps do |t|
      t.string :name
      t.string :dsp_admin_name
      t.string :dsp_admin_surname
      t.string :dsp_admin_email
      t.string :dsp_admin_number

      t.timestamps
    end
  end
end
