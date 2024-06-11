# Use the official Python image from the Docker Hub
FROM python:3.11.5-slim

# Set the working directory
WORKDIR /app

# Install GCC and Python development headers
RUN apt-get update && apt-get install -y gcc python3-dev

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Install Jupyter
RUN pip install jupyter

# Make port 8888 available to the world outside this container
EXPOSE 8888

# Run Jupyter notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
