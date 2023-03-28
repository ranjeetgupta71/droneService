class DurationsController < ApplicationController

  def index
    @durations = Duration.all
  end
end
