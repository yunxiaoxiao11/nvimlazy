# 🍿 util

<!-- docgen -->

## 📚 Types

```lua
---@alias snacks.util.hl table<string, string|vim.api.keyset.highlight>
```

## 📦 Module

### `Snacks.util.blend()`

```lua
---@param fg string foreground color
---@param bg string background color
---@param alpha number number between 0 and 1. 0 results in bg, 1 results in fg
Snacks.util.blend(fg, bg, alpha)
```

### `Snacks.util.bo()`

Set buffer-local options.

```lua
---@param buf number
---@param bo vim.bo
Snacks.util.bo(buf, bo)
```

### `Snacks.util.color()`

```lua
---@param group string hl group to get color from
---@param prop? string property to get. Defaults to "fg"
Snacks.util.color(group, prop)
```

### `Snacks.util.file_decode()`

Decodes a file name to a string.

```lua
---@param str string
Snacks.util.file_decode(str)
```

### `Snacks.util.file_encode()`

Encodes a string to be used as a file name.

```lua
---@param str string
Snacks.util.file_encode(str)
```

### `Snacks.util.icon()`

Get an icon from `mini.icons` or `nvim-web-devicons`.

```lua
---@param name string
---@param cat? string defaults to "file"
---@return string, string?
Snacks.util.icon(name, cat)
```

### `Snacks.util.is_transparent()`

Check if the colorscheme is transparent.

```lua
Snacks.util.is_transparent()
```

### `Snacks.util.keycode()`

```lua
---@param str string
Snacks.util.keycode(str)
```

### `Snacks.util.on_key()`

```lua
---@param key string
---@param cb fun(key:string)
Snacks.util.on_key(key, cb)
```

### `Snacks.util.on_module()`

Call a function when a module is loaded.
The callback is called immediately if the module is already loaded.
Otherwise, it is called when the module is loaded.

```lua
---@param modname string
---@param cb fun(modname:string)
Snacks.util.on_module(modname, cb)
```

### `Snacks.util.redraw()`

Redraw the window.
Optimized for Neovim >= 0.10

```lua
---@param win number
Snacks.util.redraw(win)
```

### `Snacks.util.redraw_range()`

Redraw the range of lines in the window.
Optimized for Neovim >= 0.10

```lua
---@param win number
---@param from number -- 1-indexed, inclusive
---@param to number -- 1-indexed, inclusive
Snacks.util.redraw_range(win, from, to)
```

### `Snacks.util.set_hl()`

Ensures the hl groups are always set, even after a colorscheme change.

```lua
---@param groups snacks.util.hl
---@param opts? { prefix?:string, default?:boolean, managed?:boolean }
Snacks.util.set_hl(groups, opts)
```

### `Snacks.util.throttle()`

```lua
---@generic T
---@param fn T
---@param opts? {ms?:number}
---@return T
Snacks.util.throttle(fn, opts)
```

### `Snacks.util.var()`

Get a buffer or global variable.

```lua
---@generic T
---@param buf? number
---@param name string
---@param default? T
---@return T
Snacks.util.var(buf, name, default)
```

### `Snacks.util.wo()`

Set window-local options.

```lua
---@param win number
---@param wo vim.wo
Snacks.util.wo(win, wo)
```