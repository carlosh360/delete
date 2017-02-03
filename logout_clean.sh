#!/bin/bash
cd /etc/lightdm/lightdm.conf.d/
EXTRA_CONFIG='session-cleanup-script=/etc/clean.sh'
CONFIGURACION=50-no-guest.conf
echo $EXTRA_CONFIG >> $CONFIGURACION

cd /etc/
touch clean.sh
echo '#!/bin/bash' >> clean.sh
echo 'cd --' >> clean.sh
echo 'cd Documents' >> clean.sh
echo 'rm -r *' >> clean.sh 
chmod +x clean.sh
service lightdm restart
