curl -s "http://yourapp.com/page{1, 2}.php?[1-1000]" &
pidlist="$pidlist $!" 
curl -s "http://yourapp.com/page{1, 2}.php?[1-1000]" &
pidlist="$pidlist $!" 
curl -s "http://yourapp.com/page{1, 2}.php?[1-1000]" &
pidlist="$pidlist $!" 
curl -s "http://yourapp.com/page{1, 2}.php?[1-1000]" &
pidlist="$pidlist $!" 
curl -s "http://yourapp.com/page{1, 2}.php?[1-1000]" &
pidlist="$pidlist $!" 
curl -s "http://yourapp.com/page{1, 2}.php?[1-1000]" &
pidlist="$pidlist $!" 
curl -s "http://yourapp.com/page{1, 2}.php?[1-1000]" &
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
