FROM openshift3/ruby-20-rhel7
USER default
EXPOSE 4567
COPY . /opt/app-root/src/
RUN scl enable rh-ruby20 "bundle install"
CMD ["scl", "enable", "rh-ruby20", ".run.sh"]

USER root
RUN chmod og+rw /opt/app-root/src/db
USER default
