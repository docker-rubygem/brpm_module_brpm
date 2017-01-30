FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.9

RUN gem install brpm_module_brpm --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["create_brpm_version_tag"]
CMD ["--help"]
