require 'test_helper'

describe "swipebox integration" do
  it "provides jquery.swipebox.js on the asset pipeline" do
    visit '/assets/swipebox.js'
    page.text.must_include '$.swipebox = '
  end

  it "provides swipebox.css on the asset pipeline" do
    visit '/assets/swipebox.css'
    page.text.must_include '.swipebox {'
  end
end