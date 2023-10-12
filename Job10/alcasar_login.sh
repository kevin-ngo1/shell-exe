email=$1
motdepasse=$2
url="https://alcasar.laplateforme.io/intercept.php?res=success&uamip=10.10.0.1&uamport=3990&called=68-05-CA-3A-2E-49&uid=kevin.ngo%40laplateforme.io&timeleft=29252443&mac=60-E9-AA-65-FE-1F&ip=10.10.3.169&nasid=alcasar.laplateforme.io&sessionid=1695889144000001d8&ssl=https%3a%2f%2f1.0.0.1%3a3991%2f&redirurl=&userurl=http%3a%2f%2fwww.gstatic.com%2fgenerate_204&md=B0466A5507D06794B22915B2C427CEFF"

if [ $# -ne 2 ]; then
    echo "Usage: $0 username password"
    exit 1
fi

authentification=$(curl -s -u "$email:$motdepasse" "$url")


if [[ $? -eq 0 ]];
then
    echo "Vous avez réussi à vous connecter à alcasar"
else
    echo "Echec de la connexion à alcasar (Verifiez votre email et mot de passe)"
fi
