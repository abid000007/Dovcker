# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the frontend.js file to the working directory
COPY frontend.js .

# Install app dependencies
RUN npm install express

# Specify the command to run your application
CMD ["node", "frontend.js"]
