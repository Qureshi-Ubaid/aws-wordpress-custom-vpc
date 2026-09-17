FROM amazonlinux:2023
RUN dnf update -y &&     dnf install -y mariadb-server &&     dnf clean all
EXPOSE 3306
CMD ["mysqld_safe"]
