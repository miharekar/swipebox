# Swipebox for Rails

[swipebox](http://brutaldesign.github.io/swipebox/) for the Rails asset pipeline

[![Gem Version](https://badge.fury.io/rb/swipebox.png)](http://badge.fury.io/rb/swipebox)
[![Build Status](https://travis-ci.org/mrfoto/swipebox.png?branch=master)](https://travis-ci.org/mrfoto/swipebox)
[![Code Climate](https://codeclimate.com/github/mrfoto/swipebox.png)](https://codeclimate.com/github/mrfoto/swipebox)
[![Dependency Status](https://gemnasium.com/mrfoto/swipebox.png)](https://gemnasium.com/mrfoto/swipebox)

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

## Swipebox usage

Look at the original [Swipebox repo](https://github.com/brutaldesign/swipebox#usage).

I have modified JavaScript a bit:
- svg image (if supported) now comes with a class change and not with a hardcoded filename change
- option to show slide count added via `showCount`. Example:

```js
$('.swipebox').swipebox({ showCount: true })
```

## License

[The MIT License](MIT-LICENSE)
