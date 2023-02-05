FROM node:14

# masuk ker direktori app
WORKDIR /app

# copy yang ada di current workdir ke /app
COPY . .

# define environment variable
ENV NODE_ENV=production DB_HOST=item-db

# install dependencies
RUN npm install --production --unsafe-perm && npm run build

# expose port
EXPOSE 8080

# RUN apps
CMD ["npm", "run", "start"]