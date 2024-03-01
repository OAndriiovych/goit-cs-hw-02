websites=("https://google.com" "https://facebook.com" "https://twitter.com")
logfile="website_check.log"
for site in "${websites[@]}"
do
    response=$(curl -Is --head --silent "$site" | head -n 1 | cut -d " " -f 2)
    if [ "$response" = "200" ]; then
        status="UP"
    else
        status="DOWN"
    fi
    echo "[$site] is $status" >> "$logfile"
    echo "[$site] is $status"
done


echo "Результати перевірки записані у файл логів: $logfile"

read -p "Натисніть Enter для виходу..."
