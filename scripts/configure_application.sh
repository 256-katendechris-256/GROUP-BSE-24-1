#!/bin/bash

# Log the start of the configuration
echo "Starting application configuration..."

# Example: Navigate to the application's directory (adjust the path accordingly)
cd /var/www/html

# Example: Set file permissions (optional)
echo "Setting file permissions..."
chmod -R 755 /var/www/html

# Install Node.js dependencies for backend
echo "Installing Node.js dependencies for the backend..."
npm install

# Navigate to React app directory and install dependencies
echo "Navigating to the React frontend directory..."
cd /var/www/html/client   # Adjust this path to your React frontend directory

echo "Installing React dependencies..."
npm install

# Build the React app (optional, if it's a production deployment)
echo "Building the React application..."
npm run build

# Move back to the backend directory (optional if you're running the backend separately)
cd /var/www/html

# Example: Restarting backend services (e.g., PM2 for Node.js or systemd)
# Uncomment and use the appropriate command for your setup

# If using PM2 to manage Node.js processes:
# echo "Restarting the Node.js application using PM2..."
# pm2 restart all

# If using a systemd service:
# echo "Restarting the Node.js service..."
# sudo systemctl restart my-nodejs-service   # Replace 'my-nodejs-service' with your service name

# Log the completion of the configuration
echo "Application configuration complete!"
