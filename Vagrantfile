require 'yaml'

# Read Settings from Here
settings_file  = './bootstrap/settings.yaml';

# Bootstrap the VP with this
bootstrap_file = './bootstrap/bootstrap.sh';

if  ! File.exists? settings_file then
    print 'Settings file not presented. Please, rename ./bootstrap/settings.yaml.dist to settings.yaml';
end

settings = YAML::load(File.read(settings_file))

Vagrant.configure(2) do |config|

    # Based on Cent OS 7
    config.vm.box = "dyankov/centos-7.0-phpwebdev"

    # Forward Ports
    settings["ports_to_forward"].each do |port|
        config.vm.network "forwarded_port", guest: port["guest"], host: port["host"]
    end

    # Privae network. VM will apear on the bellow IP
    config.vm.network "private_network", ip: settings["private_network_ip"]

    # Sync folders
    settings["folders_to_sync"].each do |folder|
        if File.exists? folder["from"] then
            mount_opts = folder["type"] == "nfs" ? ['actimeo=1'] : []
            config.vm.synced_folder folder["from"], folder["to"], type: folder["type"] ||= nil, mount_options: mount_opts
        end
    end

    # Machine Configuration
    config.vm.provider "virtualbox" do |vb|
        vb.name = settings["vm_name"]
        vb.memory = settings["vm_memory"]
    end

    # Copy files to VM
    settings["files_to_move"].each do |file|
        if File.exists? file["source"] then
            config.vm.provision "file", source: file["source"], destination: file["to"]
        end
    end

    # Run the bootstraping script
    if File.exists? bootstrap_file then
        config.vm.provision "shell", path: bootstrap_file
    end

    # Restart the Apache so the changes can be applied.
    config.vm.provision "shell", inline: "sudo systemctl restart httpd.service"
end