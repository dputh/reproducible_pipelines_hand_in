# Use an official R runtime as a parent image
FROM r-base:latest

# Set the working directory in the container to /usr/src/app
WORKDIR /usr/src/app

# Install the renv package
RUN R -e "install.packages('renv')"

# Copy the local files into the container
COPY . /usr/src/app

# Restore the R environment using the renv.lock file
RUN R -e "renv::restore()"

# Create a directory to store the graphs
RUN mkdir -p /home/graphs

# Automatically run the targets pipeline when the container starts
CMD ["Rscript", "-e", "targets::tar_make()"]
