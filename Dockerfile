FROM debian:stretch
COPY . /app/
WORKDIR /app/
RUN ./install-ansible.sh
CMD ansible-playbook deb9-cis-playbook.yml