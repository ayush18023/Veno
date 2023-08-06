FROM debian:bullseye-slim

# Set the working directory within the container
WORKDIR /app

# Install necessary dependencies
RUN apt-get update && \
    apt-get install -y g++

# Copy your application's source code into the container
COPY . .

# Compile your C++ application
RUN g++ ./Index/hnsw.cc -o hnsw -lstdc++ -std=c++17

# Specify the command to run your application when the container starts
CMD ["./hnsw"]
