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

```js
//= require swipebox
```

Use a specific class for your links and use the title attribute as caption.

```html
<a href="big/image.jpg" class="swipebox" title="My Caption">
```

Bind the swipebox behaviour on every link with the "swipebox" class.

```javascript
$(".swipebox").swipebox();
```

###Options

```javascript
useCSS : true, // false will force the use of jQuery for animations
initialIndexOnArray: 0, // which image index to init when a array is passed
hideBarsDelay : 3000, // 0 to always show caption and action bar
videoMaxWidth : 1140, // videos max width
vimeoColor : 'CCCCCC', // default color for vimeo embed
showCount: false, // when true shows a simple slide counter (x/total)
beforeOpen: function(){} , // called before opening
afterClose: function(){} // called after closing
```

Look at the original [Swipebox repo](https://github.com/brutaldesign/swipebox#usage) for more.

I have modified source a bit from the 1.2.1 version:
- svg image (if supported) now comes with a class change and not with a hardcoded filename change
- option to show slide counter added via `showCount`

## License

[The MIT License](MIT-LICENSE)
