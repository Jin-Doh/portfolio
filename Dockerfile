# 1. Build the SvelteKit app
FROM node:lts-iron AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# 2. Prepare the environment for Nginx and Node.js
FROM nginx:stable-perl AS server

# Install Node.js for running the SvelteKit SSR server
RUN apt-get update && apt-get install -y curl && \
    curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Set working directory for the Node.js app
WORKDIR /app

# Copy the built Svelte app from the builder
COPY --from=builder /app ./

# Copy Nginx configuration for the Svelte app
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

# Create directories for Certbot to use for webroot verification
RUN mkdir -p /var/www/certbot

# Expose ports for HTTP (1080) and HTTPS (1443)
EXPOSE 1080 1443

# Start both Nginx and the SvelteKit server
CMD ["sh", "-c", "node .svelte-kit/output/server/index.js & nginx -g 'daemon off;'"]