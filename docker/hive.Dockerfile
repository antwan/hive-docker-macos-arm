FROM menorah84/hive:3.1.0-postgresql-metastore

RUN sed -i -e 's/\r$//' /usr/local/bin/entrypoint.sh

RUN sed -i -e 's/\r$//' /usr/local/bin/startup.sh

RUN sed -i -e 's/\r$//' /opt/hive/conf/hive-env.sh

RUN rm /opt/hive/lib/guava-19.0.jar

RUN cp /opt/hadoop-3.2.2/share/hadoop/hdfs/lib/guava-27.0-jre.jar /opt/hive/lib/

ENTRYPOINT ["entrypoint.sh"]

CMD startup.sh