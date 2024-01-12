FROM ruby:3.3.0 

# Install deps
ADD packages.sh .
RUN ./packages.sh
RUN gem install red-adbc

# A place for the code
RUN mkdir /app
VOLUME /app

# Just run it once
CMD ruby /app/main.rb