curl -s "https://localhost/topic?[1-1000]" &
pidlist="$pidlist $!"
curl -s "https://localhost/topic?[1-1000]" &
pidlist="$pidlist $!"
curl -s "https://localhost/topic?[1-1000]" &
pidlist="$pidlist $!"
curl -s "https://localhost/topic?[1-1000]" &
pidlist="$pidlist $!"
curl -s "https://localhost/topic?[1-1000]" &
pidlist="$pidlist $!"
curl -s "https://localhost/topic?[1-1000]" &
pidlist="$pidlist $!"
curl -s "https://localhost/topic?[1-1000]" &
pidlist="$pidlist $!"

for job in $pidlist do
  echo $job
  wait $job || let "FAIL+=1"
done

if [ "$FAIL" == "0" ]; then
  echo "YAY!"
else
  echo "FAIL! ($FAIL)"
fi
