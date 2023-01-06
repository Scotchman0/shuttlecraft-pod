FROM fedora:latest
RUN yum update -y
RUN yum install npm -y
RUN mkdir -p /opt/shuttlecraft/design /opt/shuttlecraft/lib /opt/shuttlecraft/public /opt/shuttlecraft/routes
COPY .env CONTRIBUTING.md docker-compose.yml index.js LICENSE.md package-lock.json README.md package.json /opt/shuttlecraft/
COPY design /opt/shuttlecraft/design
COPY lib /opt/shuttlecraft/lib
COPY public /opt/shuttlecraft/public
COPY routes /opt/shuttlecraft/routes
WORKDIR opt/shuttlecraft/
RUN npm install
ENTRYPOINT npm start