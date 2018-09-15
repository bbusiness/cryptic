module Accounting::CategoriesHelper
  def nested_categories(categories)
    categories.map do |c, sc|
      depth = c.depth
      c.subtree.arrange(order: :number).map do |c, sc|
        render partial: 'category', locals: {ac: c, sub_categories: sc, depth: @rootdepth}
      end.join.html_safe
    end.join.html_safe
  end
end
