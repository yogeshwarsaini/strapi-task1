# 1. Official Node image
FROM node:20-alpine

# 2. Set working directory
WORKDIR /app

# 3. Copy files to container
COPY . .

# 4. Install dependencies
RUN yarn install

# 5. Build Strapi Admin Panel
RUN yarn build

# 6. Start the app
CMD ["yarn", "start"]

# 7. Expose port
EXPOSE 1337

