class UnsafePage
  include PageObject
  include CheckTextHelper

  page_url 'http://www.auc-test-category-phishing.com/'

  in_iframe(:id => 'abs-top-frame') do |frame|
    div :avira_small, class: 'alien-placeholder', frame: frame
    link :close_welcome, class: 'tour-card-close', frame: frame
    link :indicator, id: 'classification-indicator', frame: frame
    header :title_inside_extension, class: 'big-title', frame: frame
    p :info_text_description, class: 'info-text', frame: frame
  end

  def check_extension_on_unsafe_website
  if  @browser.url != 'http://www.auc-test-category-phishing.com/'
    raise 'URL has not been changed'
  end
  close_welcome if close_welcome_element.visible?
  wait_until { avira_small_element.visible? }
  avira_small_element.hover
  wait_until {indicator_element.visible?}
  indicator_element.click
  end

  def check_redirect_to_warning
    if
    @browser.url != 'http://www.auc-test-category-phishing.com/'
      WarningPage.new(@browser)
    end
  end

end















