# 1. Build the Svelte app
FROM node:lts-iron AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# 2. Prepare Nginx for serving the app
FROM nginx:stable-perl AS server

# Copy the built Svelte app to Nginx's html directory
COPY --from=builder /app/build /usr/share/nginx/html

# Copy Nginx configuration for the Svelte app
COPY ./nginx.conf /etc/nginx/conf.d/kyungho.info.conf

# Create directories for Certbot to use for webroot verification
RUN mkdir -p /var/www/certbot

# Expose ports for HTTP (1080) and HTTPS (1443)
EXPOSE 1080 1443

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]