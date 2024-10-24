# 1. Build the SvelteKit app
FROM node:lts-iron AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# 2. Use an Nginx image to serve the built static files
FROM nginx:alpine AS server
WORKDIR /usr/share/nginx/html

# Copy the built SvelteKit static files to the Nginx html directory
COPY --from=builder /app/build/ .

# Copy the default Nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf
RUN find /usr/share/nginx/html -type f -name "*.webp" -exec chmod 644 {} \;

# Expose the port that Nginx will run on
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]