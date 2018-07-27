mkdir -p /opt/elasticsearch; cd /opt/elasticsearch

# скачаем архив с официального сайта Elasticsearch и контрольную сумму
``
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-6.1.1.tar.gz.sha512
# проверка - проверка
shasum -a 512 -c elasticsearch-6.1.1.tar.gz.sha512
# ты умеешь запускать из архива? я - нет
tar -xzf elasticsearch-6.1.1.tar.gz

### Еще немного магии и мы закончим ###

cp -R /opt/elasticsearch/elasticsearch-6.1.1/ /opt/elasticsearch/1
cp -R /opt/elasticsearch/elasticsearch-6.1.1/ /opt/elasticsearch/2
cp -R /opt/elasticsearch/elasticsearch-6.1.1/ /opt/elasticsearch/3

cd /opt/elasticsearch/elasticsearch-6.1.1/

# для отъявленных перфекционистов
useradd -M elasticsearch
usermod -L elasticsearch
mkdir -p /var/run/opt-elasticsearch/{1,2,3}
chown -R elasticsearch:elasticsearch /var/run/opt-elasticsearch/
chown -R elasticsearch:elasticsearch /opt/elasticsearch/