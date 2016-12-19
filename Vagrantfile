Vagrant.configure("2") do |config|
  config.vm.box = "bento/centos-7.2"
  config.vm.network "public_network", :ip => "192.168.0.100" , :bridge => "en0: Wi-Fi (AirPort)"
  config.vm.synced_folder "./", "/vagrant", type: "virtualbox", :owner => "vagrant", :groupe => "vagrant", :mount_options => ['dmode=755', 'fmode=644']
  config.vm.provision :docker
  config.vm.provision :docker_compose, yml: "/vagrant/docker-compose.yml", run: "always"
  # config.vm.provision "shell", :path => "docker.sh", run: "always"
  # config.vm.provision "docker" do |d|
  #   d.build_image "/vagrant",
  #     args: "-t mdst/nginx -f /vagrant/Dockerfile_nginx"
  #   d.run "mdst/nginx",
  #     args: "-d -p 80:80 -v /vagrant:/usr/local/nginx/html"
  #   d.build_image "/vagrant",
  #     args: "-t mdst/ffmpeg -f /vagrant/Dockerfile_ffmpeg"
  #   d.run "mdst/ffmpeg",
  #     args: "-d -e TARGET_RTMP_URL='rtmp://172.17.0.2:1935/live/mdst'"
  # end
end