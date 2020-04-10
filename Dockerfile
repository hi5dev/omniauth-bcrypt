# Use Ruby 2.6.5 running on Alpine Linux 3.11.
FROM ruby:2.6.5-alpine3.11

# Update system's package manager.
RUN apk update --no-cache alpine-sdk

# Git is required to install the gems. It's used in .gemspec.
RUN apk add --no-cache git

# Install build-base so gems with native extensions can be used.
RUN apk add --no-cache build-base

# Bind the project's root directory to /src on the container.
WORKDIR /src

# Copy the project to the container so Bundler can install all the gems.
COPY ./ /src/

# Install Bundler.
RUN gem install bundler

# Install the gems for every group, do not vendor the gems, and allow use of all CPU cores for parallel installations.
# RUN bundle install --without="" --no-deployment --jobs=`nproc`
