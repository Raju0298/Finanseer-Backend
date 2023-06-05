FROM node:16

# Create app directory
WORKDIR /

#Copy app sourcecode
COPY . . 

# install dependencies
RUN npm install

#Expose on port 3000
EXPOSE 3000

# This is the command to run the app
CMD [ "node", "index.js"]
