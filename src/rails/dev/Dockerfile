FROM ecylmz/rails:1

WORKDIR scripts/base
RUN ./operator.sh

WORKDIR ../runtime
RUN ./chrome.sh

WORKDIR ../virtual
RUN ./clean.sh && ./prune.sh

WORKDIR /app

USER op

EXPOSE 3000

CMD bundle exec rails server -b 0.0.0.0
