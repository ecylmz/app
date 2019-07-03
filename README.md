Docker Uygulama İmajı Çalışmaları
=================================

Production İmajı
----------------

`docker build -f src/rails/Dockerfile . -t ecylmz/rails:1`

Geliştirme İmajı
----------------

`docker build -f src/rails/dev/Dockerfile . -t ecylmz/rails-dev:1`

Uygulama Geliştirme
-------------------

Dockerfile.dev ve docker-compose.yml gistteki gibi olmalıdır: [gist](https://gist.github.com/ecylmz/f9fbbb56e4b86d7270ae9f4459d58564)

Geliştirme ortamı için gerekli komutlar:

```sh
dcb web sidekiq
dcrw bundle install -j4 --path /app/vendor/bundle
dcrw yarn install
dcrw rails db:create db:migrate db:seed SAMPLE_DATA=true
dcu web sidekiq
```

Testleri çalıştırmak için gerekli komutlar:

```sh
dcb test
dcr test bin/plugdo bundle install -j4 --path /app/vendor/bundle --without development
dcr test yarn install
dcr test rails db:create db:structure:load
dcr test rails test:system test
```
