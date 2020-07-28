FROM ubuntu
RUN apt-get update
RUN apt-get -y install ruby
RUN mkdir ruby_test_app
COPY . ./ruby_test_app
RUN gem install bundler
RUN cd ./ruby_test_app && bundle install

EXPOSE 4567

CMD ["ruby", "./ruby_test_app/app.rb"]