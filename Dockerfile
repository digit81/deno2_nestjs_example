FROM denoland/deno:2.0.3

# Create app directory
WORKDIR /usr/src/app

# Copy the Deno configuration
COPY deno.json ./

# Install the dependencies
RUN deno install

# Copy the app source
COPY src ./src

# Run the build command which creates the compiled build
RUN deno run build

# Start the server using the compiled build
CMD [ "dist/main" ]
