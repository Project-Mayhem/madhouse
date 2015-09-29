# Retrieve centos7 from Docker Hub
FROM centos:centos7

# install stuff
yum -y update; yum -y install epel-release npm nodejs

# copy over project source
COPY . /src

# Install node dependencies, leveraging the package.json
RUN cd /src; npm install

#expose the internal node port to reach the app
EXPOSE 3000

CMD["node", "/src/app.js --port 3000"]
