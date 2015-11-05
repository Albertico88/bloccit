class WelcomeController < ApplicationController
  def index
  end

  def about
    @hi_there = "Hello there!"
  end

  def faq
  end
end
