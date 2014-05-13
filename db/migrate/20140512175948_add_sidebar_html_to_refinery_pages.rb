class AddSidebarHtmlToRefineryPages < ActiveRecord::Migration
  def change
    add_column :refinery_pages, :sidebar_html, :text
  end
end
