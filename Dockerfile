FROM elixir:latest


RUN apt-get update
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash
RUN apt-get install -y nodejs
RUN npm install npm@latest -g

RUN mix local.hex --force
RUN mix archive.install hex phx_new 1.4.12 --force
RUN mix local.rebar --force

WORKDIR /app

