**Getting Started**

1. Clone the repository locally
2. Login to any OpenShift/minishift cluster by doing a `oc login ...`
3. chmod +x boot.sh
4. ./boot.sh


**Output**

```
--> Deploying template "test-script5/postgres-auth" for "postgres-auth.yaml" to project test-script5

     postgres-auth
     ---------
     PostgreSQL openshift Example

--> Creating resources ...
    service "postgres-auth" created
    pod "postgres-auth" created
--> Success
    Run 'oc status' to view your app.
route "postgres-auth" exposed
--> Deploying template "test-script5/auth" for "auth.yaml" to project test-script5

     * With parameters:
        * IMAGE_TAG=latest

--> Creating resources ...
    deploymentconfig "auth" created
    service "auth" created
    route "auth" created
--> Success
    Run 'oc status' to view your app.
route "auth" deleted
route "auth" exposed
--> Deploying template "test-script5/postgresql-wit" for "postgres-wit.yaml" to project test-script5

     postgresql-wit
     ---------
     PostgreSQL openshift Example

--> Creating resources ...
    service "postgres-wit" created
    pod "postgres-wit" created
--> Success
    Run 'oc status' to view your app.
error: services "postgresql-wit" not found
See 'oc expose -h' for help and examples.
--> Deploying template "test-script5/wit" for "wit.yaml" to project test-script5

     * With parameters:
        * IMAGE_TAG=latest

--> Creating resources ...
    deploymentconfig "wit" created
    service "wit" created
    route "wit" created
--> Success
```

**Test out Auth**

Do an `oc get route auth` to see the host you need to reach for using the auth service.
Example, 
http://auth-test-script6.dev.rdu2c.fabric8.io/api/status
