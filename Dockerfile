FROM    fedora:27

LABEL   version=0.0.2

RUN     dnf update -y

RUN     dnf install -y \
            sudo \
            git \
            python2 \
            python-pip \
            python-devel

RUN     pip install ansible

CMD     ["/usr/sbin/init"]
