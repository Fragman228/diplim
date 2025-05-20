sudo mkdir /opt/promtail
cd /opt/promtail
wget https://github.com/grafana/loki/releases/latest/download/promtail-linux-amd64
sudo chmod +x promtail-linux-amd64
sudo mv promtail-linux-amd64 /usr/local/bin/promtail
