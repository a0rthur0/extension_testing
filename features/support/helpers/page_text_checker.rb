module CheckTextHelper
  include PageObject

  in_iframe(:id => 'abs-top-frame') do |frame|
    header :title_inside_extension, class: 'big-title', frame: frame
    p :info_text_description, class: 'info-text', frame: frame
  end

  def extension_text_check(expected_text_title, info_text)
    wait_until { title_inside_extension_element.visible? }
    if
    title_inside_extension == expected_text_title
      p "Website status is OK - '#{expected_text_title}'"
    else
      raise "WebSite status differs from #{expected_text_title}"
    end
    wait_until { info_text_description_element.visible? }
    if
    info_text_description_element.text.include?(info_text)
    else
      raise "Info text differs from '#{info_text}'"
    end
  end

end