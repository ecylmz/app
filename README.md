Docker Uygulama İmajı Çalışmaları
=================================

### Production İmajı

`docker build -f src/rails/Dockerfile . -t ecylmz/rails:1`


### Geliştirme İmajı

`docker build -f src/rails/dev/Dockerfile . -t ecylmz/rails-dev:1`
