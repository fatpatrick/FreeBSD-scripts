#!/usr/local/bin/bash

PATH=/sbin:/usr/bin

# edit this line
cachefile='/usr/local/share/cache'

while read _ ip _
do
    [[ $ip != 2607:f2f8* ]] && continue
    (( ${#ip} > max )) && max=${#ip}
    host=$(dig +short -x "$ip")
    data+=("$ip $host")
done < <(ifconfig)

printf "%s\n" "$max" "${data[@]}" > "$cachefile"

