#
# Used to build OCI-compatible image using either Docker or Buildah
#
# FROM openjdk:19-slim-buster (DEPRECATED! https://github.com/docker-library/openjdk/issues/505)
FROM eclipse-temurin:19.0.1_10-jdk-jammy

# create non-root user and group
# -l and static IDs assigned to avoid delay in lookups and system logging
ARG THE_USER_ID=1001
ARG THE_GROUP_ID=1001
RUN \
  /usr/sbin/groupadd -g $THE_GROUP_ID spring && \
  /usr/sbin/useradd -l -u $THE_USER_ID -G spring -g $THE_GROUP_ID spring && \
  mkdir logs && chgrp spring logs && chmod ug+rwx logs

# run as non-root
USER spring:spring

# main port
EXPOSE 8080

COPY springBoot.jar springBoot.jar
CMD ["java","-jar","springBoot.jar"]


