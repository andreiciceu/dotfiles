#!/bin/sh

cp ~/secrets/so-prod.pk ~/.ssh/
chmod 600 ~/.ssh/so-prod.pk

cp ~/secrets/id_rsa ~/.ssh/
chmod 600 ~/.ssh/id_rsa

cp ~/secrets/id_rsa.pub ~/.ssh/
chmod 600 ~/.ssh/id_rsa.pub

cp ~/secrets/kubeconfig ~/.kubeconfig
chmod g+r ~/.kubeconfig

cp ~/secrets/atac-ssh.sh ~/
chmod +x ~/atac-ssh.sh

cp ~/secrets/sounderas-ssh.sh ~/
chmod +x ~/sounderas-ssh.sh

