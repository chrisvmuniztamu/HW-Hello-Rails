module ApplicationHelper
    def toggle_sort_order(column)
      if params[:sort_by] == column
        params[:sort_order] == "asc" ? "desc" : "asc"
      else
        "asc"
      end
    end
  end
  