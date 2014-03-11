class AddIsStickyPageToRefineryPages < ActiveRecord::Migration
  def change
    add_column :refinery_pages, :is_sticky_page, :boolean, :default => false
  end
end
