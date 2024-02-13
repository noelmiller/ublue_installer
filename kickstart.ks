%include submodules/fedora-kickstarts/fedora-live-kde.ks

%packages
rpm-ostree
%end

# TODO: remove the --no-signature-verification

%post
echo "ostreecontainer --stateroot bazzite --remote bazzite --no-signature-verification --url ghcr.io/ublue-os/bazzite:latest" >> /usr/share/anaconda/interactive-defaults.ks
%end
