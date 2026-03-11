{ pkgs, ... }: {
  home.packages = with pkgs; [
    nfs-utils 
    mergerfs
    tailscale # sudo systemctl enable --now tailscaled && sudo tailscale up --ssh
  ];

  /*
    # Install the server
    sudo apt update && sudo apt install nfs-kernel-server -y

    # Configure the share for Teddy
    echo "/home/karma/shared 100.80.19.125(rw,sync,no_subtree_check,no_root_squash)" | sudo tee -a /etc/exports
    sudo chown -R karma:karma /home/karma/shared
    sudo chmod -R 775 /home/karma/shared

    sudo exportfs -ra
    sudo systemctl restart nfs-kernel-server
  */

  /* COMMAND RECIPE FOR CLIENT:
  ----------------------------------
  3.  BRIDGE NIX TO UBUNTU:
      sudo ln -s $(which mount.nfs) /sbin/mount.nfs

  4.  DEFINE MOUNT:
      sudo mkdir -p /mnt/nfs-rubie
      echo "rubie:/home/karma/shared /mnt/nfs-rubie nfs nfsvers=4,nolock,defaults,noatime,soft,timeo=100,_netdev 0 0" | sudo tee -a /etc/fstab

  5.  ACTIVATE:
      sudo systemctl daemon-reload
      sudo mount -a
  */
}