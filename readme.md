<div align="center">
  <img src="https://github.com/sxyazi/yazi/blob/main/assets/logo.png?raw=true" alt="Yazi logo" width="20%">
</div>

<h3 align="center">
	Nord Flavor for <a href="https://github.com/sxyazi/yazi">Yazi</a>
</h3>

## Preview

<img src="preview.png" width="600" />

## Installation

```sh
ya pack -a stepbrobd/nord
```

## Usage

Set the content of your `theme.toml` to enable it as your _dark_ flavor:

```toml
[flavor]
dark = "nord"
```

Make sure your `theme.toml` doesn't contain anything other than `[flavor]`,
unless you want to override certain styles of this flavor.

See the
[Yazi flavor documentation](https://yazi-rs.github.io/docs/flavors/overview) for
more details.

For Yatline:

```lua
require("yatline"):setup({
    theme = require("nord"):setup(),
})
```

## License

The flavor is MIT-licensed. Check the [LICENSE](LICENSE) for more details.
