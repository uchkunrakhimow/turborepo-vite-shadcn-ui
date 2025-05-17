# Build stage
FROM node:22-alpine AS builder

WORKDIR /app

# Copy package files
COPY package*.json ./
COPY turbo.json ./

# Create necessary directories
RUN mkdir -p apps/vite apps/nextjs

# Copy package files for each app
COPY apps/vite/package*.json apps/vite/
COPY apps/nextjs/package*.json apps/nextjs/

# Install dependencies
RUN npm ci

# Copy all source code
COPY . .

# Build the application using fast:build to skip TypeScript
ARG APP_NAME
#ARG BASE_PATH
#ENV BASE_PATH=${BASE_PATH}

# Many build tools use BASE_PATH, PUBLIC_URL, or similar
RUN npm run fast:build --workspace=apps/${APP_NAME} #-- --base=${BASE_PATH}

# Production stage
FROM nginx:alpine

ARG APP_NAME
COPY --from=builder /app/apps/${APP_NAME}/dist /usr/share/nginx/html/${APP_NAME}
COPY nginx_${APP_NAME}.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]