# baseimge
FROM node:18-alpine


# set working directory
WORKDIR /app


# instruction for docker server 
# copy the package.json file
# to the working directory in the docker server
# to make cache of the dependencies and speed up the build process
COPY package.json .
# copy all the files from current directory 
# to the working directory in the docker server
COPY . .


#  run some comamnds to install some dependencise
RUN npm install


# strtup command
CMD [ "npm","start" ]
