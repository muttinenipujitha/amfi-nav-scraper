
URL="https://www.amfiindia.com/spages/NAVAll.txt"
OUTPUT="amfi_data.tsv"


curl -s $URL | 
awk -F ';' 'NF >= 5 && $1 ~ /^[0-9]+$/ { print $4 "\t" $5 }' > $OUTPUT

echo "Data saved to $OUTPUT"
