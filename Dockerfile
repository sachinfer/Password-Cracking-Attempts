# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Jupyter and necessary Python libraries (optional)
RUN pip install --no-cache-dir jupyter

# Expose port 8888 to access Jupyter Notebook
EXPOSE 8888

# Command to start Jupyter Notebook when the container runs
CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]
