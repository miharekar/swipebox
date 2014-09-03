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
    page.text.must_include '/assets/swipebox-icons.svg'
    page.text.must_include '/assets/swipebox-icons.png'
    page.text.must_include '/assets/swipebox-loader.gif'
  end
end
