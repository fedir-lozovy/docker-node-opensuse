FROM opensuse
MAINTAINER "fedir.lozovyi"
RUN zypper update -y && \
    zypper install -y curl git tar make gcc-c++ libopenssl-devel && \
    zypper install -y --type pattern devel_C_C++ && \
#    zypper install -y --type pattern devel_basis && \
    curl -SL https://nodejs.org/dist/v8.9.4/node-v8.9.4-linux-x64.tar.xz | tar xJv && \
    cp -a node-v8.9.4-linux-x64/. /
