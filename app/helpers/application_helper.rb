module ApplicationHelper
  def custommenu
    presenter = Refinery::Pages::MenuPresenter.new(refinery_menu_pages, self)

    presenter.dom_id = 'menu'
    presenter.css = 'menu clearfix'
    presenter.menu_tag = :nav
    presenter.list_tag = :ul
    presenter.list_item_tag = :li
    presenter.selected_css = :current
    presenter.first_css = :first
    presenter.last_css = :last
    #presenter.list_tag_css = 'sfmenu'
    presenter
  end
  def footer_menu
    menu_items = refinery_menu_pages

    presenter = Refinery::Pages::MenuPresenter.new(menu_items, self)
    presenter.dom_id = "footer_menu"
    presenter.css = "footer_menu"
    presenter.menu_tag = :div
    presenter.list_tag = :ul
    presenter.list_item_tag = :li
    presenter.selected_css = :current
    presenter.first_css = nil
    presenter.last_css = nil
    presenter
  end
  def side_menu
    #Refinery::Menu.new(refinery_menu_pages.detect{ |item| item.original_id == page.id }.children)
    #refinery_menu_pages.select{|item| item.parent_id == @page.root.id or item.parent_id == @page.id}
=begin
    menu_items = []
    for item in refinery_menu_pages.items
      if item.parent_id == @page.root.id
        menu_items.append(item)
        next
      end
      if item.parent_id == @page.id
        menu_items.append(item)
        next
      end
    end
    menu = Refinery::Menu.new
    menu.items = menu_items
=end
    menu = refinery_menu_pages
    presenter = Refinery::Pages::MenuPresenter.new(menu, self)
    presenter.dom_id = "side_menu"
    presenter.css = "side_menu"
    presenter.menu_tag = :div
    presenter.list_tag = :ul
    presenter.list_item_tag = :li
    presenter.selected_css = :current
    presenter.first_css = nil
    presenter.last_css = nil
    presenter.roots = refinery_menu_pages.select{|p| p.parent_id == @page.root.id}
    presenter
  end
end
