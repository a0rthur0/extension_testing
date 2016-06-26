class SafePage
  include PageObject
  include CheckTextHelper

  page_url 'http://www.auc-test-category-clean.com/'

  div :small_header_avira, class: 'alien-placeholder'

  in_iframe(:id => 'abs-top-frame') do |frame|
    div :avira_small, class: 'alien-placeholder', frame: frame
    link :close_welcome, class: 'tour-card-close', frame: frame
    link :indicator, id: 'classification-indicator', frame: frame
    header :title_inside_extension, class: 'big-title', frame: frame
    p :info_text_description, class: 'info-text', frame: frame
  end

  def check_extension
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


  # def check_website_safe_or_not(expected_text_title, info_text)
  #   wait_until { title_inside_extension_element.visible? }
  #     if
  #     title_inside_extension == expected_text_title
  #       p "Website status is OK - '#{expected_text_title}'"
  #     else
  #       raise "WebSite status differs from #{expected_text_title}"
  #     end
  #   wait_until { info_text_description_element.visible? }
  #     if
  #     info_text_description_element.text.include?(info_text)
  #     else
  #       raise "Info text differs from '#{info_text}'"
  #     end
  # end
end