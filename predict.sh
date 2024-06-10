
# Resolve the route to service
ROUTE_NAME=$(oc get route purchase-predictor -o jsonpath='{.spec.host}')

#Get info from service
echo ''
echo 'Here comes model info:'
curl -k https://$ROUTE_NAME/info

# Post example prediction call
echo ''
echo 'Here comes example prediction:'
curl -k -d '{"time":4}' -H "Content-Type: application/json" \
 -X POST \
   https://$ROUTE_NAME/predict
echo ''

# Post example prediction call
echo ''
echo 'Here comes another one:'
curl -k -d '{"time":6}' -H "Content-Type: application/json" \
 -X POST \
   https://$ROUTE_NAME/predict
echo ''
echo ''

