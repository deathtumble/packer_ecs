sudo curl https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-6.5.4-x86_64.rpm -o filebeat-6.5.4x86_64.rpm
sudo rpm -vi filebeat-6.5.4x86_64.rpm

sudo mkdir -p /etc/filebeat/containers
sudo chown root:root /etc/filebeat/containers/

sudo mv /home/ec2-user/files/config/filebeat.yml /etc/filebeat/filebeat.yaml 
sudo chown root:root /etc/filebeat/filebeat.yaml

sudo mv /home/ec2-user/files/config/containers /etc/filebeat/containers 
sudo chown root:root /etc/filebeat/containers/*

sudo service filebeat start