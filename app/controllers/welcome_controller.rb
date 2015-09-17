class WelcomeController < ApplicationController
  def index
  end

  def about
    @hi_there = "hi!"
  end

  def faq
  end
end
