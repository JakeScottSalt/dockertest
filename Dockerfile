# Use an official Node.js image as a base
FROM node:16-alpine

# Set the working directory to /docker-test
WORKDIR /docker-test

# Install Git and any dependencies (including bash)
RUN apk add --no-cache git bash

# Clone the repository
RUN git clone https://github.com/JakeScottSalt/dockertest.git .

# List the contents of /docker-test to make sure the repo is cloned correctly
RUN ls -alh /docker-test

# Fix permissions on the app folder and all its contents
RUN chmod -R 777 /docker-test/app

# Set the working directory to /docker-test/app
WORKDIR /docker-test/app

# Install npm dependencies
RUN npm install

# Expose the port the app will use (3000 in this case)
EXPOSE 3000

# Run the app using npm run dev
CMD ["npm", "run", "dev"]
