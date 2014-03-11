class AddIsTopPageToRefineryPages < ActiveRecord::Migration
  def change
    add_column :refinery_pages, :is_top_page, :boolean, :default => false
  end
end
