# -*- default-generic -*-

FROM pvstodghill/pvs-conda-base:latest

# File Author / Maintainer
MAINTAINER Paul Stodghill <paul.stodghill@usda.gov>

# Image meta-data
ENV PACKAGE pipeline-pirate

# Install more required packages
# RUN apt-get install --yes FIXME

# Install package(s)
ADD conda-setup.bash /tmp
RUN bash -x /tmp/conda-setup.bash

# Set up working environment
USER guest1000

# Default command - Print a helpful message
CMD echo Access this container with https://github.com/pvstodghill/howto

