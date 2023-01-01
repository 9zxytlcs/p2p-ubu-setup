!#/bin/sh

echo;
echo …updating Linux packages
echo;

sleep 1

apt-get update && apt-get upgrade -y

echo;
echo …downloading base dir
echo;

sleep 1

git clone https://github.com/9zxytlcs/p2p-ubu-setup.git

echo;
echo …setting up local bins
echo;

sleep 1

cp p2p-ubu-setup/usr-local-bin/docs /usr/local/bin/docs
cp p2p-ubu-setup/usr-local-bin/noip2 /usr/local/bin/noip2
cp p2p-ubu-setup/usr-local-bin/start-cf /usr/local/bin/start-cf
cp p2p-ubu-setup/usr-local-bin/stop-cf /usr/local/bin/stop-cf

echo;
echo …coping root config files
echo;

sleep 1

cp p2p-ubu-setup/tinyproxy.conf tinyproxy.conf
cp p2p-ubu-setup/noip2.conf noip2.conf

echo;
echo …setting up CashFactory
echo;

sleep 1

cp p2p-ubu-setup/CashFactory CashFactory -f -R

echo;
echo …installing & putting neofetch to .bashrc
echo;

sleep 1

apt install neofetch
neofetch >> .bashrc