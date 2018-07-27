wget https://artifacts.elastic.co/downloads/kibana/kibana-6.1.1-linux-x86_64.tar.gz
wget https://artifacts.elastic.co/downloads/kibana/kibana-6.1.1-linux-x86_64.tar.gz.sha512
shasum -a 512 -c elasticsearch-6.1.1.tar.gz.sha512
tar -xzf kibana-6.1.1-linux-x86_64.tar.gz
cd kibana/bin
./kibana
