FROM ruby:2.3.3-alpine


COPY . /src/app

WORKDIR /src/app

RUN gem install foreman && bundle install

EXPOSE 5000

ENTRYPOINT ["foreman"]
CMD ["start"]

