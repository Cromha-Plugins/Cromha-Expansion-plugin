log=$1
date=$(date)
user=$(whoami)

echo "$date; $user: $log" >> ../logs.log
