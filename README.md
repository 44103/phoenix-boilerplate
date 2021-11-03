# Phoenix bilerplate

## Introduction
You can make phoenix environment easier

## How to start
```
docker-compose run web mix phx.new . --app <app-name>
```
```
vim config/dev.exs
```
```diff
# Configure your database
config :<app-name>, <App-name>.Repo,
  username: "postgres",
  password: "postgres",
  database: "dododo_dev",
-  hostname: "localhost",
+  hostname: "db",
  show_sensitive_data_on_connection_error: true,
  pool_size: 10
```
```
docker-compose run web mix ecto.create
```

[reference url: 初心者が流れで学ぶDocker/Kubernetes超入門](https://sanposhiho.com/posts/2020-03-08-qiita-fc8082f3d303c04cca2e/)

