# SquashWhitespace

SquashWhitespace adds `squash_whitespace` method to view helper.

## Usage

```erb
<%= squash_whitespace do %>
  <ul>
    <li>Item 1</li>
    <li>Item 2</li>
    <li>Item 3</li>
  </ul>
<% end %>
```

renders

```html
<ul><li>Item 1</li><li>Item 2</li><li>Item 3</li></ul>
```
