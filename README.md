[![Gem Version](https://badge.fury.io/rb/anycable.svg)](https://rubygems.org/gems/anycable)
[![Build](https://github.com/anycable/anycable/workflows/Build/badge.svg)](https://github.com/anycable/anycable/actions)
[![Documentation](https://img.shields.io/badge/docs-link-brightgreen.svg)](https://docs.anycable.io/v1)

# AnyCable

<img align="right" height="150" width="129"
     title="AnyCable logo" src="https://docs.anycable.io/assets/images/logo.svg">

AnyCable allows you to use any WebSocket server (written in any language) as a replacement for your Ruby server (such as Faye, Action Cable, etc).

AnyCable uses the same protocol as ActionCable, so you can use its [JavaScript client](https://www.npmjs.com/package/actioncable) without any monkey-patching.

> [AnyCable Pro](https://docs.anycable.io/pro) has been launched 🚀

<a href="https://evilmartians.com/">
<img src="https://evilmartians.com/badges/sponsored-by-evil-martians.svg" alt="Sponsored by Evil Martians" width="236" height="54"></a>

## Requirements

- Ruby >= 2.6
- Redis (for broadcasting **in production**, [discuss other options](https://github.com/anycable/anycable/issues/2) with us!)

## Usage

Check out our 📑 [Documentation](https://docs.anycable.io/v1).

## Links

- [AnyCable 1.0: Four years of real-time web with Ruby and Go](https://evilmartians.com/chronicles/anycable-1-0-four-years-of-real-time-web-with-ruby-and-go)

- [AnyCable: Action Cable on steroids!](https://evilmartians.com/chronicles/anycable-actioncable-on-steroids)

- [Connecting LiteCable to Hanami](http://gabrielmalakias.com.br/ruby/hanami/iot/2017/05/26/websockets-connecting-litecable-to-hanami.html) by [@GabrielMalakias](https://github.com/GabrielMalakias)

- [From Action to Any](https://medium.com/@leshchuk/from-action-to-any-1e8d863dd4cf) by [@alekseyl](https://github.com/alekseyl)

## Talks

- High-speed cables for Ruby, RubyConf 2018, [slides](https://speakerdeck.com/palkan/rubyconf-2018-high-speed-cables-for-ruby) and [video](https://www.youtube.com/watch?v=8XRcOZXOzV4) (EN)

- One cable to rule them all, RubyKaigi 2018, [slides](https://speakerdeck.com/palkan/rubykaigi-2018-anycable-one-cable-to-rule-them-all) and [video](https://www.youtube.com/watch?v=jXCPuNICT8s) (EN)

- Wroc_Love.rb 2018 [slides](https://speakerdeck.com/palkan/wroc-love-dot-rb-2018-cables-cables-cables) and [video](https://www.youtube.com/watch?v=AUxFFOehiy0) (EN)

- RubyConfMY 2017 [slides](https://speakerdeck.com/palkan/rubyconf-malaysia-2017-anycable) and [video](https://www.youtube.com/watch?v=j5oFx525zNw) (EN)

- RailsClub Moscow 2016 [slides](https://speakerdeck.com/palkan/railsclub-moscow-2016-anycable) and [video](https://www.youtube.com/watch?v=-k7GQKuBevY&list=PLiWUIs1hSNeOXZhotgDX7Y7qBsr24cu7o&index=4) (RU)

## Building

### Generating gRPC files from `.proto`

- Install required GRPC gems:

```sh
gem install grpc
gem install grpc-tools
```

- Re-generate GRPC files (if necessary):

```sh
make
```

## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/anycable/anycable](https://github.com/anycable/anycable).

Please, provide reproduction script (using [this template](https://github.com/anycable/anycable/blob/master/etc/bug_report_template.rb)) when submitting bugs if possible.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Security Contact

To report a security vulnerability, please contact us at `anycable@evilmartians.com`. We will coordinate the fix and disclosure.
