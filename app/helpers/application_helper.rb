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
    menu_items = refinery_menu_pages

    presenter = Refinery::Pages::MenuPresenter.new(menu_items, self)
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
