class CopiesController < ApplicationController

  def index
    @copies = Copy.order("created_at DESC")
  end

  def new
  end
  
end
