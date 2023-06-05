FROM node:16

# Create app directory
WORKDIR /

#Copy app sourcecode
COPY . . 

# install dependencies
RUN npm install

#Expose on port 8080
EXPOSE 8080

# This is the command to run the app
CMD [ "node", "index.js"]
