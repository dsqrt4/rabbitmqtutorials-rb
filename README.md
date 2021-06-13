# RabbitMqTutorials

This project is just me trying to get back into ruby a bit while following along with the [RabbitMQ Tutorials](https://www.rabbitmq.com/getstarted.html)
from which most of the code in this project is derived for now.

## Installation

Clone and `cd` into this repo and then install it as stated under [Development](#development) for now.

## Usage

Spin up an instance of RabbitMQ, e.g. in a container:

```shell
$ podman run --detach\
             --name tutorial-mq\
             --hostname tutorial-rabbit\
             --publish 5672:5672\
             --publish 15672:15672\
             --env RABBITMQ_DEFAULT_USER=tutorial\
             --env RABBITMQ_DEFAULT_PASS=impostersyndrome\
             rabbitmq:3-management
```

After installing the Gem, run any of the included executables by typing its name into a terminal:

```shell
$ helloworld-producer 
# => [x] Sent 'Hello World!'
$ helloworld-consumer 
# => [*] Waiting for messages. To exit press CTRL+C
# => [x] Received Hello World!
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

**Note:** On Fedora you need to `dnf install ruby-devel` to build the gem.

## Contributing

This project is not open for contributions.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
