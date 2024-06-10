
export IRIS_ROUTE=https://$(oc get routes | grep purchase-master | awk '{print $2}')

export TOKEN=$(oc whoami -t)


# Call model server deployed model

echo ''
echo 'Response from model server deployed ONNX model:'
echo ''

curl -k -H "Authorization: Bearer $TOKEN" $IRIS_ROUTE/v2/models/purchase-master/infer \
 -X POST \
 --data '{"inputs" : [{"name" : "X","shape" : [ 1, 4 ],"datatype" : "FP32","data" : [ 3, 4, 3, 2 ]}],"outputs" : [{"name" : "output0"}]}'

echo ''
echo ''

