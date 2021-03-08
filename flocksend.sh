URL="https://api.flock.com/hooks/sendMessage/a527326b-a864-466b-aa75-ae7492500916" # Webhook
# $PROCESS 

PAYLOAD="{
  \"flockml\": \"<flockml>Hello! Welcome to <b>Flock</b>!</flockml>\"
}"

curl -X POST $URL -H "Content-Type: application/json" -d "$PAYLOAD"