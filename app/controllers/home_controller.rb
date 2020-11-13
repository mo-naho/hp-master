class HomeController < ApplicationController
  def index
    @topics = Topic.order(created_at: :desc)
    @fresh_infos = Info.order(my_date: :desc).limit(3)
  end

  def activity
  end

  def news
    @infos = Info.order(my_date: :desc)
  end

  def event
    @events = Event.order(created_at: :desc)
  end

end
