# docker-pets
Aplicação em python que utiliza o Vagrant para aprovionar a máquina e o container de forma automatizada utilizando puppet.

1 - Para executar este projeto, será necessário a instalação dos seguintes softwares:
* Oracle VirtualBox => https://www.virtualbox.org/
* Vagrant => https://www.vagrantup.com/downloads.html

2 - Após a instalação dos softwares acima, será necessário seguir os seguintes passos abaixo para realizar o aprovisionamento da máquina:

* git clone https://github.com/leoberbert/docker-pets.git

* cd docker-pets/
* vagrant up

OBS: Agora é só aguardar até que seu ambiente seja feito de forma automática. Note que dentro da pasta manifest existe o arquivo app.pp, onde toda a automação acontece através do software puppet.

3 - Agora basta acessar o endereço http://192.168.0.111:5000 para ter acesso ao sistema rodando dentro do Vagrant com o docker.

OBS: O ip mencionado acima poderá ser alerado dentro do arquivo Vagrantfile.





