FROM ubuntu:22.04

RUN apt-get update \
 && apt-get install nano \
 && apt-get install -y rustc \
 && apt-get install -y cargo 
 
#   Pull the latest Rust image from Docker Hub
# FROM rust:latest
# ENV PATH="/root/.cargo/bin:${PATH}"

# Create a working directory for our Rust code
WORKDIR /var/projects/rust

# Copy our "Hello, world!" program into the container
COPY src/main.rs .

RUN cargo init

# RUN cargo build --release
# RUN rustc main
# # Build and run the Rust program
# CMD ["cargo", "run"]

# CMD ["./target/release/rust"]
# CMD [ "./var/projects/rust/main"]