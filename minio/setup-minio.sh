
# Setup Minio at the current project:

 oc apply -f https://raw.githubusercontent.com/RedHatQuickCourses/rhods-qc-apps/main/4.rhods-deploy/chapter2/minio.yml

# Get Minio UI route

 oc get routes | grep minio-ui | awk '{print $2}'

# Get Minio API route

 oc get routes | grep minio-api | awk '{print $2}'

