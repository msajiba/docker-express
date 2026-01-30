FROM node:22-alpine

# Create app directory
WORKDIR /app

# Copy package files first (better caching)
COPY package*.json ./

RUN npm install

# Copy source code
COPY . .

# Expose app port
EXPOSE 8000

# Start app
CMD ["node", "index.js"]
