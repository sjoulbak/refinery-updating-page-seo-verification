require 'test_helper'

class RefineryPageTest < ActiveSupport::TestCase
  test "updating only the seo-meta" do
    page = Refinery::Page.create(title: "test")

    page.browser_title = "Special title"
    page.meta_description = "Find me with seo!"

    page.save
    page.reload

    assert page.browser_title == "Special title"
    assert page.meta_description == "Find me with seo!"
  end
end
