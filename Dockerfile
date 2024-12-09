FROM node:18-alpine  # Use a Node.js version that supports ReadableStream

# Set the working directory
WORKDIR /app

# Copy project files to the container
COPY . .

# Install dependencies
RUN npm install

# Start the application
CMD ["node", "agriculture-scraper.js"]
