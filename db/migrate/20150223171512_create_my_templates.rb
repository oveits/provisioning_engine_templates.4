class CreateMyTemplates < ActiveRecord::Migration
  def change
    create_table :my_templates do |t|
      t.text :my_template_name
      t.string :my_template_type
      t.text :my_template_body

      t.timestamps
    end
  end
end
