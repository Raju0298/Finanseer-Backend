# Base image
FROM node:16.15.1-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the application files into the working directory
COPY . /app

# Install the application dependencies
RUN npm install

#Expose on port 3000
EXPOSE 8080

# Define the entry point for the container
CMD ["npm", "run", "dev"]
