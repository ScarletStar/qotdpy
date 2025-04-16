from python:3.13

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the rest of the application code into the container
COPY . .

# Specify the command to run the application
CMD ["python3", "qotd.py"]