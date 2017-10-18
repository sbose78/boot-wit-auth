oc new-app -f postgres-auth.yaml
oc expose service postgres-auth --port 5432

oc new-app -f auth.yaml
oc delete route auth
oc expose service auth --port 8089


oc new-app -f postgres-wit.yaml
oc expose service postgres-wit --port 5432

oc new-app -f wit.yaml
