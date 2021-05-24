# GLFW Crystal

GLFW binding to Crystal

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     glfw:
       github: Minva/GLFW-Crystal
   ```

2. Run `shards install`

## Usage

```crystal
require "glfw"

GLFW::Context.init

window = GLFW::Window.new 1280, 720
window.show

while window.should_close == 0
  LibGLFW.pollEvents
end

GLFW::Context.terminate
```

TODO: Write usage instructions here

## Development

TODO: Write development instructions here

## Contributing

1. Fork it (<https://github.com/Minva/GLFW-Crystal/fork>)
2. Create your feature branch (`git checkout -b feature/my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin feature/my-new-feature`)
5. Create a new Pull Request

## Contributors

- [lodenos](https://github.com/lodenos) - creator and maintainer
