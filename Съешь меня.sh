# я говорил, что Elasticsearch на Java?
yum install java-1.8.0-openjdk

### Музыкальная пауза ###

# Надо больше золота памяти
sysctl -w vm.max_map_count=262144

# Поехали!
systemctl daemon-reload
systemctl restart opt-elasticsearch-{1,2,3}
