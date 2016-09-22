require 'test_helper'

describe "swipebox integration" do
  it "provides jquery.swipebox.js on the asset pipeline" do
    visit '/assets/swipebox.js'
    page.text.must_include '$.swipebox = '
  end

  it "provides swipebox.css on the asset pipeline" do
    visit '/assets/swipebox.css'
    page.text.must_include 'html.swipebox-html.swipebox-touch {'
  end

  it "includes images from assets in the compiled css" do
    visit '/assets/swipebox.css'
    page.text.must_match %r{/assets/swipebox-icons(?:-[\da-f]*)?\.svg}
    page.text.must_match %r{/assets/swipebox-icons(?:-[\da-f]*)?\.png}
    page.text.must_match %r{/assets/swipebox-loader(?:-[\da-f]*)?\.gif}
  end
end
