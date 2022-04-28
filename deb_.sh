apt update && apt -y install ca-certificates wget net-tools gnupg zip git
wget -qO - https://as-repository.openvpn.net/as-repo-public.gpg | apt-key add -
echo "deb http://as-repository.openvpn.net/as/debian bullseye main">/etc/apt/sources.list.d/openvpn-as-repo.list
apt update && apt -y install openvpn-as

verp=$(python3 --version | grep -P '\d{1}\.\d{1,2}' -o)
updatefile=pyovpn/lic/info.pyc
cd ~
git clone https://github.com/militrik/ovpnInstall.git
cd ovpnInstall
mkdir sub1
ln ./openvpn-as-kg/crack/pyovpn-2.0-py$verp.egg/info.pyc ./pyovpn-2.0-py$verp.egg/info.pyc
zip -rum /usr/local/openvpn_as/lib/python/pyovpn-2.0-py$verp.egg sub1/


