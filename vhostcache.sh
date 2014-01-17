#!/usr/local/bin/bash

PATH=/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin

# edit this line
cachefile='/usr/local/share/cache'

while read _ ip _
do
[[ $ip != 2001:bc8:* ]] && continue
(( ${#ip} > max )) && max=${#ip}
host=$(dig +short -x "$ip")
if [[ $host ]]
then
    forward=$(dig +short "$host" AAAA)
    if [[ $forward ]]
    then
        data+=("$ip $host")
    fi
fi
done < <(ifconfig)

printf "%s\n" "$max" "${data[@]}" > "$cachefile"
echo "I'm running" > somefile2
