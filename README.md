# Swipebox for Rails

[![Gem Version](http://img.shields.io/gem/v/swipebox.svg?style=flat-square)](http://rubygems.org/gems/swipebox)
[![Build Status](http://img.shields.io/travis/mrfoto/swipebox.svg?style=flat-square)](https://travis-ci.org/mrfoto/swipebox)
[![Code Climate](http://img.shields.io/codeclimate/github/mrfoto/swipebox.svg?style=flat-square)](https://codeclimate.com/github/mrfoto/swipebox)
[![Dependency Status](http://img.shields.io/gemnasium/mrfoto/swipebox.svg?style=flat-square)](https://gemnasium.com/mrfoto/swipebox)

[Swipebox | A touchable jQuery lightbox](http://brutaldesign.github.io/swipebox/) for the Rails asset pipeline

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'swipebox'
```

## Usage

In your CSS manifest file:

```css
*= require swipebox
```

In your JavaScript manifest file:

```javascript
//= require swipebox
```

Use a specific class for your links and use the title attribute as caption.

```html
<a href="big/image.jpg" class="swipebox" title="My Caption">
```

Bind the swipebox behaviour on every link with the 'swipebox' class.

```javascript
$('.swipebox').swipebox();
```

###Options

```javascript
useCSS: true, // false will force the use of jQuery for animations
useSVG: true, // false to force the use of png for buttons
initialIndexOnArray: 0, // which image index to init when a array is passed
removeBarsOnMobile: true, // false will show top navigation bar on mobile devices
hideCloseButtonOnMobile: false, // true will hide the close button on mobile devices
hideBarsDelay: 3000, // delay before hiding bars on desktop
videoMaxWidth: 1140, // videos max width
beforeOpen: function() {}, // called before opening
afterOpen: null, // called after opening
afterClose: function() {}, // called after closing
afterMedia: function() {}, // called after media is loaded
loopAtEnd: false, // true will return to the first image after the last image is reached of Bootstrap)
autoplayVideos: false, // true will autoplay Youtube and Vimeo videos
queryStringData: {}, // plain object with custom query string arguments to pass/override for video URLs,
toggleClassOnLoad: '' // CSS class that can be toggled when the slide will be loaded (like 'hidden' of Bootstrap)
```

Look at the original [Swipebox repo](https://github.com/brutaldesign/swipebox#usage) for more.

I have modified source a bit from the 1.4.4 version:
- SCSS instead of CSS because we need the `image-url` helpers
- .png -> .svg via class not hardcoded image path

## License

[The MIT License](MIT-LICENSE)
