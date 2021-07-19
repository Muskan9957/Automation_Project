#! /bin/bash -
if [[ ! -e /var/www/html/inventory.html ]]; then
    mkdir -p /var/www/html/
    touch /var/www/html/inventory.html

fi



cat <<EOF > /var/www/html/inventory.html
<!DOCTYPE html>
<html>
<head>
<style>
table, th, td {
border: 1px solid black;
border-collapse: collapse;
}
th {background-color: yellow} 
</style>
</head>
<body>
EOF

awk -F, 'BEGIN{print "<table>";} 
    NR==1 { cell="th" ; }
   { print "<tr>";
     for(i=1;i<=NF;i++) printf "<%s>%s</%s>",cell,$i,cell ; 
     print "</tr>" ; cell="td" } 
   END{print "</table>"}' >> /var/www/html/inventory.html

echo "</body>" >> /var/www/html/inventory.html
echo "</html>" >>/var/www/html/inventory.html
