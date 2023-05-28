# Base python docker image
FROM python:3.10-buster

# Import code
ADD . /code

# Set working directory
WORKDIR /code

# Install dependencies
RUN pip install flask

# Expose port
EXPOSE 5001

# Run python file
CMD ["python", "main.py"]