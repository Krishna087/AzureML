# Use Python Image from docker hub
FROM python:3

# Make Working directory
WORKDIR /usr/src/app

RUN mkdir -p /usr/src/app/pip

# Copy Requirement text which has all Packages to be imported
COPY requirements.txt /usr/src/app/pip

# PIP / All the packages needed
RUN pip install --no-cache-dir -r requirements.txt

#COPY . .

#CMD [ "python", "./your-daemon-or-script.py" ]