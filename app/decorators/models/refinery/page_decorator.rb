Refinery::Page.class_eval do
  attr_accessible :is_sticky_page, :is_top_page, :show_in_footer

  def self.sticky_pages
    where :is_sticky_page => true
  end
  def self.top_pages
    where :is_top_page => true
  end
  def self.footer_menu_pages
    where :show_in_footer => true
  end
end