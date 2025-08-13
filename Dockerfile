# Stage 1: Build the Next.js application
FROM node:alpine

# Set working directory
WORKDIR /app

COPY . .

RUN npm install

RUN npm run build


EXPOSE 3000

# Run Next.js in production
CMD ["npm", "start"]
