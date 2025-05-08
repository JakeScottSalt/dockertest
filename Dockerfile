# Use an official Node.js image as a base
FROM node:16-alpine

# Set the working directory
WORKDIR /app

# Install Git (since we're cloning the repo)
RUN apk add --no-cache git

# Clone the public GitHub repository
RUN git clone https://github.com/JakeScottSalt/dockertest.git .

# Install npm dependencies
RUN npm install

# Expose the port your app is listening on (you might need to adjust this)
EXPOSE 3000

# Run the app using "npm run dev"
CMD ["npm", "run", "dev"]
