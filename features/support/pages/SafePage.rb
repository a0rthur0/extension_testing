class SafePage
  include PageObject
  include CheckTextHelper

  page_url 'http://www.auc-test-category-clean.com/'

  div :small_header_avira, class: 'alien-placeholder'

  in_iframe(:id => 'abs-top-frame') do |frame|
    div :avira_small, class: 'alien-placeholder', frame: frame
    link :close_welcome, class: 'tour-card-close', frame: frame
    link :indicator, id: 'classification-indicator', frame: frame
  end

  def check_extension_on_safe_website
    close_welcome if close_welcome_element.visible?
    wait_until { avira_small_element.visible? }
    avira_small_element.hover
    if
    indicator_element.visible?
      puts 'Extension visible'
      else
        raise 'Unable to check extension visibility'
    end
    indicator_element.click
  end

end