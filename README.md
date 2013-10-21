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
- svg image now comes with class and not with hardcoded filename change
- I've added an option to show slide count via `showCount` option. Example:

```js
$('.swipebox').swipebox({ showCount: true })
```

## License

[The MIT License](MIT-LICENSE)
