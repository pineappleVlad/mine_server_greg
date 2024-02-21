FROM openjdk:8-jre

WORKDIR /minecraft

COPY . .


EXPOSE 32228

CMD java -XX:+UseG1GC -XX:+UseFastAccessorMethods -XX:+OptimizeStringConcat -XX:MetaspaceSize=1024m -XX:MaxMetaspaceSize=2048m -XX:+AggressiveOpts -XX:MaxGCPauseMillis=10 -XX:+UseStringDeduplication -Xms4G -Xmx6G -XX:hashCode=5 -Dfile.encoding=UTF-8 -jar Thermos.jar --log-strip-color
