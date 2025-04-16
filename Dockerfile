FROM python:3.13

# Set the working directory in the container
RUN mkdir -p /usr/src/app/
WORKDIR /usr/src/app

# Copy the rest of the application code into the container
COPY qotd.py /usr/src/app
COPY quotes.txt /usr/src/app

# Specify the command to run the application
CMD ["python3", "qotd.py"]