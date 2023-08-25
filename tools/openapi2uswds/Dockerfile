FROM racket/racket:8.9-full

RUN mkdir /app
COPY *.rkt /app
RUN mkdir /input
COPY template.html /input
WORKDIR /app
RUN raco pkg install \
    --auto \
    --no-cache \
    --no-docs \
    cli \
    gregor \
    http-easy
RUN raco exe -o openapi-to-uswds main.rkt ;\
    raco distribute o2u openapi-to-uswds
RUN mkdir /output
ENTRYPOINT ["/app/o2u/bin/openapi-to-uswds", "--output-directory", "/output", "--input-directory", "/input"]
