# Use the official Node.js Alpine image as the base image
FROM node:14-alpine

# Create a working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install the server dependencies
RUN npm install

# Copy your Node.js server file to the working directory
COPY app.js .

# Expose port 3000
EXPOSE 3000

# Command to start the Node.js server when the container runs
CMD ["node", "server.js"]