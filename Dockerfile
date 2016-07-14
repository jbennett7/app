FROM openshift3/ruby-20-rhel7

USER default
EXPOSE 8080
COPY . /opt/app-root/src/

RUN scl enable ruby200 "bundle install"
CMD ["scl", "enable", "ruby200", "./run.sh"]
