class AddShowInFooterToRefineryPages < ActiveRecord::Migration
  def change
    def change
      add_column :refinery_pages, :show_in_footer, :boolean, :default => true
    end
  end
end
