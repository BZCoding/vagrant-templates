# Demo App

Install it with `bundle install --standalone --clean` and run it with `ruby app.rb`.

## Using the app with Docker

Install dependencies by running:

~~~ console
docker run --rm -v "$PWD":/usr/src/app -v "$PWD"/bundle:/usr/local/bundle -w /usr/src/app [-e KEY=value] ruby:alpine bundle install --standalone --clean
~~~

Run rake tasks:

~~~ console
docker run --rm -v "$PWD":/usr/src/app -v "$PWD"/bundle:/usr/local/bundle -w /usr/src/app [-e KEY=value] ruby:alpine bundle exec rake [task name]
~~~

And launch the app

~~~ console
docker run --rm -v "$PWD":/usr/src/app -v "$PWD"/bundle:/usr/local/bundle -w /usr/src/app -p 5000:5000 ruby:alpine ruby app.rb
~~~

**Please note**:

 - If your app uses gems that require native extensions (e.g nokogiri, puma, etc) you need to use `cloudgear/ruby:2.2` image.

 - If your app uses Sprockets gem with `uglifier` or other JS tool, you need a JS runtime for [ExecJS](https://github.com/sstephenson/execjs).
