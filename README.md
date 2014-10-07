# Swipebox for Rails

[![Gem Version](https://badge.fury.io/rb/swipebox.png)](http://badge.fury.io/rb/swipebox)
[![Build Status](https://travis-ci.org/mrfoto/swipebox.png?branch=master)](https://travis-ci.org/mrfoto/swipebox)
[![Code Climate](https://codeclimate.com/github/mrfoto/swipebox.png)](https://codeclimate.com/github/mrfoto/swipebox)
[![Dependency Status](https://gemnasium.com/mrfoto/swipebox.png)](https://gemnasium.com/mrfoto/swipebox)

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
useCSS : true, // false will force the use of jQuery for animations
initialIndexOnArray: 0, // which image index to init when a array is passed
hideCloseButtonOnMobile : false, // true will hide the close button on mobile devices
hideBarsDelay : 3000, // delay before hiding bars on desktop
videoMaxWidth : 1140, // videos max width
beforeOpen: function(){} , // called before opening
afterOpen: null, // called after opening
afterClose: function(){}, // called after closing
loopAtEnd: false // true will return to the first image after the last image is reached
```

Look at the original [Swipebox repo](https://github.com/brutaldesign/swipebox#usage) for more.

I have modified source a bit from the 1.3.0.1 version:
- SCSS instead of CSS because we need the `asset-url` helpers
- .png -> .svg via class not hardcoded image path

## License

[The MIT License](MIT-LICENSE)
