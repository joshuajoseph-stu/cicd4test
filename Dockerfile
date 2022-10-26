FROM keymetrics/pm2:latest-alpine

# Bundle APP files
COPY . .

# Install app dependencies
RUN npm install 

# Expose the listening port of your app
EXPOSE 3000

# Show current folder structure in logs
#RUN ls -al -R

CMD [ "pm2-runtime", "start", "ecosystem.config.js" ]