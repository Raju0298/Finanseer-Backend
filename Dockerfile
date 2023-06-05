# Base image
FROM node:16.15.1-alpine

# Set the working directory
WORKDIR /src

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm ci --only=production

# Copy the rest of the application code
COPY . .

# Expose the port on which the application will run
EXPOSE 3000

# Start the application with nodemon
CMD ["npm", "run", "dev"]
