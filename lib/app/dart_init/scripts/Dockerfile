FROM debian:bullseye-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Dart executable to the working directory
COPY testeServer /app/testeServer

# Make the Dart executable runnable
RUN chmod +x /app/testeServer

EXPOSE 7001

# Command to run the Dart executable
CMD ["./testeServer"]

