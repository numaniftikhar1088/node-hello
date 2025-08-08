# Use official Node.js LTS version
FROM node:18

# Create and set working directory inside container
WORKDIR /app

# Copy package.json and package-lock.json first for dependency caching
COPY package*.json ./

# Install production dependencies
RUN npm install --production

# Copy the rest of your app's source code
COPY . .

# Expose the port your app listens on (adjust if different)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
