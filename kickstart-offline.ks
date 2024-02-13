# WIP: We need to find a solution for making a container registry available in the image or an OCI archive available in the image that anaconda and kickstart can consume

%include fedora-kickstarts/fedora-live-workstation.ks

%packages
rpm-ostree
%end

# %post
# systemctl enable httpd.service
# %end

%post --nochroot
cp ./bazzite.tar ${INSTALL_ROOT}/var/www/html/
%end
