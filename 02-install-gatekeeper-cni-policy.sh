# Install policy to check CNI plugin at RHACM hub and managed clusters

oc apply -f ./policies/gatekeeper-constraint-template.yaml
oc apply -f ./policies/gatekeeper-cni-policy.yaml
