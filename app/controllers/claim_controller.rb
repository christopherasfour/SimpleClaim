class ArticlesController < ApplicationController 
  def new
    @claim = Claim.new
  end
end
