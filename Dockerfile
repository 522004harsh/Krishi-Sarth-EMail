# Use the base image
FROM ghcr.io/railwayapp/nixpacks:ubuntu-1731369831

# Set the working directory
WORKDIR /app

# Copy project files to the container
COPY . .

# Install Node.js and npm
RUN apt-get update && apt-get install -y curl && \
    curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && \
    apt-get install -y nodejs

# Install project dependencies
RUN npm install

# Start the application
CMD ["node", "agriculture-scraper.js"]
