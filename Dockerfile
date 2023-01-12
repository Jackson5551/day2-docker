# Start with the node bas image
FROM node:19.4.0

# Metadata informatiion on the image (optional)
LABEL mainainer="Jackson Bingham <bingham.jackson49@gmail.com>"

# Set the working folder that will conatain our node application. This command also
# set the current workign directory in the conainer to /app.
WORKDIR /app

# Coy the files from he local systtem's current directory in to container's
# current dirrectory, which is /app as set by the WORKDIR command above.
COPY . .

# The application will listen on port 8080 inside the container.
EXPOSE 8080

# Run the npm install command to install all the supported Node modules that
# are listed in the package.json file.
RUN npm install

# Command to run when the container starts
CMD ["npm", "start"]
