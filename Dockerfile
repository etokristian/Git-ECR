# Use official Node.js image as base
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy the application code into the container
COPY . .

# Expose the port that the app will run on
EXPOSE 8080

# Start the app
CMD ["node", "index.js"]