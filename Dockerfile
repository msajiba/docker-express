FROM node:20-alpine

# Create app directory
WORKDIR /app

# Copy package files first (better caching)
COPY package*.json ./

RUN npm install --production

# Copy source code
COPY src ./src

# Expose app port
EXPOSE 3000

# Start app
CMD ["npm", "start"]
