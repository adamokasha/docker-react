FROM node:alpine as builder
WORKDIR '/app'
COPY package*.json ./
RUN npm install
COPY . .
CMD ["npm", "run", "build"]

FROM nginx
# instruction for us (as developers) AND elastic beanstalk. 
# This in most cases does nothing.
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html