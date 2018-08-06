#!/bin/bash
useradd -c alunno_prima -m -u 1001 -p "" alunno1
useradd -c alunno_seconda -m -u 1002 -p "" alunno2
useradd -c alunno_terza -m -u 1003 -p "" alunno3
useradd -c alunno_quarta -m -u 1004 -p "" alunno4
useradd -c alunno_quinta -m -u 1005 -p "" alunno5
useradd -c infanzia -m -u 1006 -p "" infanzia 

mkdir /home/docente/Documenti/docenti
echo "//server.local/classe_prima /home/alunno1/Documenti cifs guest,iocharset=utf8,uid=1001 0 0"  >> /etc/fstab
echo "//server.local/docenti /home/docente/Documenti/docenti cifs guest,iocharset=utf8,uid=1000 0 0"  >> /etc/fstab
echo "//server.local/classe_seconda /home/alunno2/Documenti cifs guest,iocharset=utf8,uid=1002 0 0"  >> /etc/fstab
echo "//server.local/classe_terza /home/alunno3/Documenti cifs guest,iocharset=utf8,uid=1003 0 0"  >> /etc/fstab
echo "//server.local/classe_quarta /home/alunno4/Documenti cifs guest,iocharset=utf8,uid=1004 0 0"  >> /etc/fstab
echo "//server.local/classe_quinta /home/alunno5/Documenti cifs guest,iocharset=utf8,uid=1005 0 0"  >> /etc/fstab
echo "//server.local/infanzia /home/infanzia/Documenti cifs guest,iocharset=utf8,uid=1006 0 0"  >> /etc/fstab
