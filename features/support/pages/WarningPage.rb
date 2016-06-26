class WarningPage
  include PageObject

  h1 :warning_title, class: 'title'
  div :drop_down_more, class: 'drop'
  div :check_button_for_exception, class: 'check'
  div :blocked_page, class: 'blocked-page'
  label :add_exception_label, class: 'abs-checkbox-label'
  link :continue_button, id: 'btn-add-exception'

  def check_warning_stub
    if  @browser.url == 'http://www.auc-test-category-phishing.com/'
      raise 'URL has not been changed'
    end

    if !blocked_page_element.exists?
      raise 'Can not check warning page'
    end
  end

  def add_exception_for_site
    wait_until { drop_down_more_element.visible? }
    drop_down_more_element.click
    check_button_for_exception_element.click
    continue_button_element.click
  end

end