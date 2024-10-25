# Use the official Python image as a base
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the CSV file into the container (will replace this path during build)
COPY data/coding-environment-exercise.csv /app/data/

# Install pandas and matplotlib for plotting
RUN pip install pandas matplotlib

# Copy the plotting script into the container
COPY plot_data.py /app/

# Run the script when the container starts
CMD ["python", "/app/plot_data.py"]
