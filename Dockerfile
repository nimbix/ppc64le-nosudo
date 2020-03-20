FROM nvidia/cuda-ppc64le:9.0-runtime-centos7

# from https://github.com/nimbix/image-common
# note that Nimbix Desktop should not be used as it requires sudo to set up
# the HTML5 desktop session; without this, users will just get a webshell
# into the session, and of course, the batch endpoint can still be used as well
RUN curl -H 'Cache-Control: no-cache' \
        https://raw.githubusercontent.com/nimbix/image-common/master/install-nimbix.sh \
                | bash

# this removes the ability to sudo for the nimbix (or login) user
RUN rm -f /etc/sudoers.d/00-nimbix

