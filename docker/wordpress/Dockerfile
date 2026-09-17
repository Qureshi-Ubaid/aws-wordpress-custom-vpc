FROM amazonlinux:2023

# Install Apache & PHP Dependencies
RUN dnf update -y &&     dnf install -y httpd php php-mysqlnd php-gd php-xml php-mbstring tar gzip &&     dnf clean all

# Download & Setup WordPress
WORKDIR /var/www/html
RUN curl -O https://wordpress.org/latest.tar.gz &&     tar -xzf latest.tar.gz --strip-components=1 &&     rm latest.tar.gz &&     chown -R apache:apache /var/www/html

EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
