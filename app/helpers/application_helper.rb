module ApplicationHelper
  require 'dalli'

  def options
    return { :namespace => "app_v1", :compress => true }#, :expires_in => 10.minute }
  end

  def custommenu
    dc = Dalli::Client.new('localhost:11211', options)
    value = dc.get('headmenu'+@page.root.id.to_s)
    if !value.nil?
      return value
    end
    header_menu_items = Refinery::Menu.new @header_menu_pages
    presenter = Refinery::Pages::MenuPresenter.new(header_menu_items, self)

    presenter.dom_id = 'menu'
    presenter.css = 'menu clearfix'
    presenter.menu_tag = :nav
    presenter.list_tag = :ul
    presenter.list_item_tag = :li
    presenter.selected_css = :current
    presenter.first_css = :first
    presenter.last_css = :last
    #presenter.list_tag_css = 'sfmenu'
    presenter.max_depth = 2
    value = presenter.to_html
    dc.set('headmenu'+@page.root.id.to_s, value)
    return value
  end

  def footer_menu
    dc = Dalli::Client.new('localhost:11211', options)
    value = dc.get('footmenu')
    if !value.nil?
      return value
    end

    menu_items = Refinery::Menu.new @footer_menu_pages
    presenter = Refinery::Pages::MenuPresenter.new(menu_items, self)
    presenter.dom_id = "footer_menu"
    presenter.css = "footer_menu"
    presenter.menu_tag = :div
    presenter.list_tag = :ul
    presenter.list_item_tag = :li
    presenter.selected_css = :current
    presenter.first_css = nil
    presenter.last_css = nil
    presenter.max_depth = 2
    value = presenter.to_html
    dc.set('footmenu', value)
    return value
  end

  def side_menu
    dc = Dalli::Client.new('localhost:11211', options)
    value = dc.get('sidemenu'+@page.id.to_s)
    if !value.nil?
      return value
    end
    menu = Refinery::Menu.new @all_menu_pages
    roots = menu.select{|p| p.parent_id == @page.root.id}
    if roots == []
      dc.set('sidemenu'+@page.id.to_s, '')
      return ''
    end
    presenter = Refinery::Pages::MenuPresenter.new(menu, self)
    presenter.dom_id = "side_menu"
    presenter.css = "side_menu"
    presenter.menu_tag = :div
    presenter.list_tag = :ul
    presenter.list_item_tag = :li
    presenter.selected_css = :current
    presenter.first_css = nil
    presenter.last_css = nil
    presenter.roots = roots
    if @pathlist.nil?
      plist = path_map
      presenter.max_depth = plist
    else
      presenter.max_depth = @pathlist.length
    end
    value = presenter.to_html
    dc.set('sidemenu'+@page.id.to_s, value)
    return value
  end

  def path_map
    if @pathlist.nil?
      pathlist = []
      parent_root_page = @page.root
      if parent_root_page.link_url != '/'
        pathlist.append(parent_root_page)
      end
      if @page.parent_id == nil
        return pathlist
      end
      if parent_root_page.id == @page.parent_id
        pathlist.append(@page)
        return pathlist
      else
        for midLevelItem in parent_root_page.children
          if midLevelItem.id == @page.parent_id
            pathlist.append(midLevelItem)
          end
        end
        pathlist.append(@page)
        return pathlist
      end
    else
      return @pathlist
    end
  end

  def site_map
    presenter = Refinery::Pages::MenuPresenter.new(refinery_menu_pages, self)

    presenter.dom_id = 'sitemap'
    presenter.css = 'sitemap clearfix'
    presenter.menu_tag = :nav
    presenter.list_tag = :ul
    presenter.list_item_tag = :li
    presenter.selected_css = :current
    presenter.first_css = :first
    presenter.last_css = :last
    #presenter.list_tag_css = 'sfmenu'
    presenter
  end

  def newest_pages
    f = Refinery::Page.fast_menu
    for item in f

    end
  end

  def top_page
    Refinery::Page.top_pages[0]
  end

  def sticky_pages
    Refinery::Page.sticky_pages
  end
end
