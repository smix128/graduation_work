#FROM bitnami/ruby:2.4.2-r1
FROM bitnami/ruby:2.6.0-r1
MAINTAINER massimo@it20.info

################## BEGIN INSTALLATION ######################

# Set the working directory to /app
WORKDIR /app

COPY yelb-appserver.rb yelb-appserver.rb 
COPY Gemfile Gemfile
COPY modules modules

ENV LANG=en_us.UTF-8
ENV LC_ALL=C.UTF-8
ENV RACK_ENV=custom

#RUN gem install sinatra --no-ri --no-rdoc
RUN gem install sinatra --no-document
#RUN gem install redis --no-ri --no-rdoc
RUN gem install redis --no-document
### hack to allow the setup of the pg gem (which would fail otherwise)
RUN apt-get update
RUN apt-get install libpq-dev -y
### end of hack (this would require additional research and optimization)
#RUN gem install pg --no-ri --no-rdoc
RUN gem install pg --no-document
### this installs the AWS SDK for DynamoDB (so that appserver can talk to DDB Vs the default Postgres/Redis)
#RUN gem install aws-sdk-dynamodb pg --no-ri --no-rdoc
RUN gem install aws-sdk-dynamodb pg --no-document
# Set the working directory to /
WORKDIR /
ADD startup.sh startup.sh

##################### INSTALLATION END #####################

CMD ["./startup.sh"]


