class InfoController < ApplicationController
   def offerta
   himalaya_form
  end
  def map
   himalaya_form

  end

  private
  def himalaya_form
    @himalaya = Himalaya.new

  end

end
