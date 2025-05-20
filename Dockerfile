# syntax=docker/dockerfile:1

FROM node:lts-alpine
#set the wroking directory in container
WORKDIR /app
#copy all the files from current directory to container
COPY . .
#install the dependencies
RUN yarn install --production
#change the owner of the directory to node
RUN chown -R node:node /app

#switch the user to node
USER node

#expose the port
EXPOSE 3000
#run the application
CMD ["node", "src/index.js"]



