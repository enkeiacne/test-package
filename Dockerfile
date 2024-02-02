# Use the official Node.js 20 image
FROM node:20

# Set the working directory in the container
WORKDIR /app

# Install pnpm globally
RUN npm install -g pnpm

# Copy package.json and pnpm-lock.yaml to the container
COPY package.json pnpm-lock.yaml ./

# Install dependencies using pnpm
RUN pnpm install

# Copy the rest of the application code to the container
COPY . .

# Build the application
RUN pnpm build

# Expose the port that the app will run on
EXPOSE 21081

# Start the application
CMD ["pnpm", "start"]