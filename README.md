# Greed, for semantic fluid grids in SCSS

Greed is an SCSS library for building semantic fluid grids.  It relies on
placeholder selectors and mixins, so that it doesn't pollute your CSS class
namespace.

Here's how to use it:

```scss
@import "greed";

.grid {
  @extend %greed-container;

  .column {
    @include greed(25%);
  }
}
```

And the corresponding HTML.

```html
<div class="grid">
  <div class="column">Thing 1</div>
  <div class="column">Thing 2</div>
  <div class="column">Thing 3</div>
  <div class="column">Thing 4</div>
</div>
```

The `greed` mixin accepts any percentage.  Instead of giving you grid-one-third
and grid-two-thirds, you can use arbitrary sizes.

```scss
// you can make something normal like
.half {
  @include greed(50%);
}

// or
.full {
  @include greed(100%);
}

// or thirds
.one-third {
  @include greed(100% / 3);
}
.two-thirds {
  @include greed(200% / 3);
}

// or something odd
.special-width {
  @include greed(12.34567%);
}
```

All `greed`s have `box-sizing: border-box`, so you can freely edit the padding
and it will not affect the width.

The `%greed-container` solely implements a clearfix, feel free to use your own.
