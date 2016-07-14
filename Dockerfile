FROM openshift3/ruby-20-rhel7
USER default
EXPOSE 4567
COPY . /opt/app-root/src/
RUN "bundle install"
CMD "/opt/app-root/src/run.sh"
