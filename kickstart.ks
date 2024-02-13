%include submodules/fedora-kickstarts/fedora-live-kde.ks

part / --size 15000 --fstype ext4

%packages
rpm-ostree
podman
%end

# TODO: remove the --no-signature-verification

%post
echo "ostreecontainer --stateroot bazzite --remote bazzite --no-signature-verification --url ghcr.io/ublue-os/bazzite:latest" >> /usr/share/anaconda/interactive-defaults.ks
%end
