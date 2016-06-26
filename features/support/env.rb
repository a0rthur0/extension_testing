require 'rspec'
require 'page-object'
require_relative '../../features/support/helpers/page_text_checker'

World(PageObject::PageFactory)
World(CheckTextHelper)