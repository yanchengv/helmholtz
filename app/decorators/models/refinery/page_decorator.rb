Refinery::Page.class_eval do
  attr_accessible :is_sticky_page, :is_top_page

  def self.sticky_pages
    where :is_sticky_page => true
  end
  def self.top_pages
    where :is_top_page => true
  end
end