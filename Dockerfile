FROM rust:latest
RUN cargo install systemfd cargo-watch
WORKDIR /app
ENTRYPOINT [ "systemfd --no-pid -s http::3000 -- cargo watch -x run" ]
