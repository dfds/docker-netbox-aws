FROM netboxcommunity/netbox:latest

RUN curl -o /tmp/rds-combined-ca-bundle.pem https://truststore.pki.rds.amazonaws.com/global/global-bundle.pem \
&& mv /tmp/rds-combined-ca-bundle.pem /usr/local/share/ca-certificates/rds-combined-ca-bundle.crt \
&& update-ca-certificates
