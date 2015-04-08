module ApplicationHelper
  def title(page_title, show_title = true)
    content_for(:title) { h(page_title.to_s) }
    @show_title = show_title
  end

  def show_title?
    @show_title
  end
  def before_exit
       session[:exit]=''
     end
   def after_exit
    session[:exit]='exit'

   end

end
