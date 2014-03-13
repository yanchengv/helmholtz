Refinery::PagesController.class_eval do
  before_filter :path_map, :menu_page_finder

  def path_map
    @pathlist = []
    parent_root_page = @page.root
    if parent_root_page.link_url != '/'
      @pathlist.append(parent_root_page)
    end
    if @page.parent_id == nil
      return
    end
    if parent_root_page.id == @page.parent_id
      @pathlist.append(@page)
      return
    end
    tmplist = []
    p = @page
    while !p.parent_id.nil?
      tmplist.append p
      p = Refinery::Page.find(p.parent_id)
    end
    @pathlist.concat tmplist.reverse
    return
  end

  def menu_page_finder
    @all_menu_pages = Refinery::Page.fast_menu
    @footer_menu_pages = @all_menu_pages.where(:show_in_footer => true)
    @header_menu_pages = @all_menu_pages.where(:show_in_menu => true)

  end
end