# DNSMasq2CloudApp
A simple converter to translate DNSMasq logs into a format compatible with Microsoft Cloud App Discovery.

This was created to convert pihole logs into something that could be parsed by MCAD in order to see a summary of what is being used within my network.
This script takes around 20 seconds to run on a single domain with around 100 clients - a daily log size of about 55mb.

**Process**
Download the dnsmasqconv.sh file to a directory on the computer holding your log file
Edit the path to the log location if necessary
chmod +x the file and then run it.
Take a copy of the file generated in /tmp/pilog.log

Create new Cloud Discovery snapshot report
Create a relevant report name and description
Change the data source to Other / Custom Log Format...

Create a new parser of type _CSV_
New Parser Name as appropriate
Delimiter _Comma_
Custom Headers  _DateStamp method bytes action dsturl srcip_
Timestamp Column Name _DateStamp_ 
Timestamp Format MMM d HH:mm:ss
Source IP address column name _srcip_
Destination URL address column name _dsturl_
Destination URL format  _https://www.contoso.com_ 
Total bytes column name _bytes_
Action column name _action_
'Deny' action term _blocked_

Upload the log file and fingers x'd you'll get a report out.
