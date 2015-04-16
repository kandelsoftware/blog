class InfosController < ApplicationController
   def index
   himalaya_form
   render  "menudegustation"
  end
   def menudegustation18
   himalaya_form
  end
   def menudegustation
   himalaya_form
  end
   def menu12
   himalaya_form
  end
  def map
   himalaya_form

  end

  private
  def himalaya_form
    @himalaya ||= Himalaya.new

  end

end
