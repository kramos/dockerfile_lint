FROM node

RUN npm install -g git+https://github.com/redhataccess/dockerfile_lint

ADD rules.yaml .

ENTRYPOINT ["dockerfile_lint", "-r", "rules.yaml", "-f"]

CMD ["/working/Dockerfile"]

