# Swipebox for Rails

[swipebox](http://brutaldesign.github.io/swipebox/) for the Rails asset pipeline

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
