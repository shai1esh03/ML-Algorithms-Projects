# Use the latest ubuntu image as base for the new image
FROM ubuntu:latest

MAINTAINER Shailesh

# Run a system update
RUN apt-get update && apt-get install -y python3 python3-pip

RUN pip3 install jupyter

RUN pip3 install pandas

RUN pip3 install numpy

RUN pip3 install statsmodels

RUN pip3 install scipy

RUN pip3 install matplotlib

RUN pip3 install seaborn

RUN pip3 install plotly

RUN pip3 install sklearn 

RUN pip3 install tensorflow

# Create a new system user
RUN useradd -ms /bin/bash jupyter	

# Change to this new user
USER jupyter

# Set the container working directory to the user home folder
WORKDIR /Users/tupran/Documents/Data/GitHub/Springboard
#/home/jupyter

EXPOSE 8100

ENV ds_debug_level =1

# Start the Jupyter notebook
ENTRYPOINT [“jupyter”, “notebook”, “—-ip=*”]


