class AddCssToPages < ActiveRecord::Migration
  def up
    add_column :spree_pages, :css, :text
  end

  def down
  end
end
