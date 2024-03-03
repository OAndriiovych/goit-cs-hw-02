websites=("https://google.com" "https://facebook.com" "https://twitter.com")
logfile="website_check.log"
for site in "${websites[@]}"
do
    if curl -s -L --head -w "%{http_code}\n" "$site" | grep "200" > /dev/null; then
        status="UP"
    else
        status="DOWN"
    fi
    echo "[$site] is $status" >> "$logfile"
    echo "[$site] is $status"
done


echo "Результати перевірки записані у файл логів: $logfile"

read -p "Натисніть Enter для виходу..."
