# Xplor

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/xplor`. To experiment with that code, run `bin/console` for an interactive prompt.

Xplor provides a CLI to spacial vehicle explore mars.

## Installation

Like so:

```bash
$ git clone https://github.com/thomasalmeida/xplor
$ cd xplor
$ rake build
$ gem install pkg/xplor-0.1.0.gem
```

## Usage

Execute `xplor` with -i flag if you have the input file with commands or type the commands in CLI. If you want write file with the output, put -o flag. Otherwise will print in console.

Example:

```bash
$ xplor -i {path/to/file/input.txt} -o {path/to/file/output.txt}
```
## Test

```bash
$ rake test
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/thomasalmeida/xplor. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/thomasalmeida/xplor/blob/master/CODE_OF_CONDUCT.md).


## Code of Conduct

Everyone interacting in the Xplor project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/thomasalmeida/xplor/blob/master/CODE_OF_CONDUCT.md).
