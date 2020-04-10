class AlbumsController < ApplicationController

  before_create :capitalize_name

  def capitalize_name
    self.name = self.name.capitalize
  end

  def new

  end
end
