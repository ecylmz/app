FROM debian:9.9

ADD scripts scripts

WORKDIR scripts/base
RUN ./common.sh && ./locale.sh && ./timezone.sh && ./operator.sh

WORKDIR ../runtime
RUN ./common.sh && ./javascript.sh && ./ruby.sh && ./chrome.sh

WORKDIR ../virtual
RUN ./clean.sh && ./prune.sh

ENV PATH=/app/bin:$PATH
