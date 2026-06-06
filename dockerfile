# Use lightweight Node.js image
FROM node:alpine

# Create application directory
WORKDIR /app

# Copy package files first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application source code
COPY . .

# Expose application port
EXPOSE 3000

# Start application
CMD ["node", "app.js"]
