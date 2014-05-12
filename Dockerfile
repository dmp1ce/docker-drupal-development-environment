FROM orchardup/php5
RUN apt-get update
RUN apt-get install -y php5-json php5-gd
ADD . /drupal
