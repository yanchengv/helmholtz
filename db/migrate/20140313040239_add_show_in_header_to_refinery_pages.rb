class AddShowInHeaderToRefineryPages < ActiveRecord::Migration
  def change
    add_column :refinery_pages, :show_in_header, :boolean, :default => true
  end
end
