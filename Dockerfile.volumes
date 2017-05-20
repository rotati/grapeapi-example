# Using the latest version of ruby
FROM ruby:2.4.1
MAINTAINER darren@rotati.com

# Install apt based dependencies required to run Grape as
# well as RubyGems. As the Ruby image itself is based on a
# Debian image, we use apt-get to install those.
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# Configure the main working directory. This is the base
# directory used in any further RUN, COPY, and ENTRYPOINT commands.
RUN mkdir /app
WORKDIR /app

# Add the Gemfiles to the image
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle install

# Map the current directory on the host
# to the /app directory in the image
ADD . /app
