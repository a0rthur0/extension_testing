require 'watir-webdriver'



Before do
  @browser = Watir::Browser.new(:chrome, :switches => %w[--load-extension=/home/arthur/.config/google-chrome/Default/Extensions/flliilndjeohchalpbbcdekjklbdgfkk/1.10.1_0])
end


After do
  @browser.close
end