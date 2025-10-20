FROM jupyter/pyspark-notebook

USER root

ENV SPARK_CONF_DIR=/opt/spark/conf

RUN wget https://repo1.maven.org/maven2/com/mysql/mysql-connector-j/9.4.0/mysql-connector-j-9.4.0.jar -P /usr/local/spark/jars/


RUN chown -R ${NB_UID}:${NB_GID} /usr/local/spark/jars

COPY spark-defaults.conf $SPARK_CONF_DIR/
RUN chown -R jovyan:users $SPARK_CONF_DIR
USER $NB_USER

RUN mkdir -p /home/jovyan/localwarehouse /home/jovyan/notebooks /home/jovyan/warehouse /home/jovyan/spark-events

