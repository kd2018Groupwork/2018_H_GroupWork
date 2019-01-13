FROM ruby:2.5

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -qq \
&& apt install -y build-essential libpq-dev nodejs \
&& apt-get install -y locales \
&& apt-get install -y fonts-ipafont

#日本語設定
RUN echo "ja_JP.UTF-8 UTF-8" > /etc/locale.gen \
&& locale-gen ja_JP.UTF-8 \
&& dpkg-reconfigure locales \
&& /usr/sbin/update-locale LANG=ja_JP.UTF-8
ENV TZ='Asia/Tokyo'
ENV LC_ALL ja_JP.UTF-8

RUN mkdir /myapp

WORKDIR /myapp

COPY ./myapp/Gemfile /myapp/Gemfile
COPY ./myapp/Gemfile.lock /myapp/Gemfile.lock

RUN bundle install

COPY ./myapp /myapp
