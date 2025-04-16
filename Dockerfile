from python:3.13-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the requirements file into the container
#COPY requirements.txt ./

# Install the dependencies
#RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . /usr/src/app

# Specify the command to run the application
CMD ["python", "./qotd.py"]

