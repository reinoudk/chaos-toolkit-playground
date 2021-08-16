# Node drain

This experiment verifies that our frontend can handle draining all the nodes in a single zone.
The hypothesis is that we have correctly set up the number of replicas and node anti-affinity rules for our 
frontend so that we always have at least 2 pods running and a frontend that returns HTTP 200 responses.

**IMPORTANT**: for the experiment to work you will have to create a port-forward to the frontend service, i.e. 
`kubectl port-forward svc/frontend 8080:80`.
