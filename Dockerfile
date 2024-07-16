# Stage 1: Build the React app
FROM node:lts-alpine as build

# Set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the React app
# RUN npm run build

# Start Nginx
CMD ["npm", "run", "dev"]