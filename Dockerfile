FROM python:3.7.3-stretch

ENV PYTHONUNBUFFERED 0
## Step 1:
# Create a working directory
RUN mkdir code
WORKDIR code

## Step 2:
# Copy source code to working directory
COPY . .

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD ["python", "app.py"]
