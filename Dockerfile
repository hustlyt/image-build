FROM flink:1.17.2-scala_2.12-java8

# 安装 Python 环境
RUN apt-get update -y && \
    apt-get install -y python3 python3-pip python3-dev && \
    rm -rf /var/lib/apt/lists/* && \
    ln -s /usr/bin/python3 /usr/bin/python

# 安装 PyFlink 和相关依赖
RUN pip3 install --no-cache-dir \
    apache-flink==1.17.2 \
    paramiko==2.12.0 \
    pysftp==0.2.9 \
    pymysql==0.10.1 \
    mysql-connector-python==8.0.29 \
    neo4j==5.28.1 \
    apache-iotdb==1.3.4
