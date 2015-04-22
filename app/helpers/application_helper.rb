module ApplicationHelper
  def nav_icon(name, icon)
    "<i class=\"icon #{icon}\"></i> #{name}".html_safe
  end

  def nav_active_item(check) 
    base = "item"
    base = base + " active" if params[:controller] == check 
    base
  end
end
