FROM reoring/rails
RUN apt-get update
RUN apt-get install -yq imagemagick
