#Read Log file to tmp dir
cat /var/log/pihole.log | grep -P "query\[A" > /tmp/pilog.log
#Encapsulate dnsmasq in commas
sed -i 's/\ dnsmasq\[/\,dnsmasq\,/g' /tmp/pilog.log
#Remove from word to comma
sed -i 's/\ from\ /\,/g' /tmp/pilog.log
#Remove query string and replace with comma
sed -i 's/\]\:\ /\,/g' /tmp/pilog.log
#Replace any double spaces with single spaces
sed -i 's/\ \ /\ /g' /tmp/pilog.log
#Replace final gaps with comma
sed -i 's/\]\ /\],/g' /tmp/pilog.log
