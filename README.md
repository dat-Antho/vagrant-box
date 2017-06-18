# Environnement de développement Vagrant




## Prérequis


* Vagrant


* VirtualBox



## Installation 


Cloner le dépôt git `git clone https://github.com/dat-Antho/vagrant-box.git`


Se déplacer dans le dossier crée `cd vagrant-box `


Avant tous paramétrer le nombre de coeurs à attribuer à la machine et la ram dans la fichier VagrantFile (attention a ne pas dépasser la RAM ni le nombre de processeurs de la machine).


config.vm.provider "virtualbox" do |v|
v.memory = 4096
v.cpus = 4 
end
# sur cette configuration, la machine virtuelle possède donc 4 coeurs et 4 GO de RAM


Après cela effectuer la commande `vagrant up` cela créera la machine virtuelle.


Cela peut prend plus où moins longtemps à cause de la vitesse de connexion.


Une fois la création de la box efectué, se connecter en ssh `vagrant ssh`


Dès que la connexion ssh est effectué nous allons terminé l'installation de la machine


Nous allons exécuter le script d'installation présent dans le répertoire /vagrant 


cd /vagrant
./install.sh


Dès que l'exécution du script est terminée, vous pouvez commencer.


Le dossier d'apache http d'apache est synchronisé avec le dossier http présent dans le dossier http à côté du vagrantFile.


Vous pouvez accéder au serveur web par cette adresse : 127.0.0.1:8080


Pour éteindre la machine `vagrant halt`

Pour la supprimer `vagrant destroy`