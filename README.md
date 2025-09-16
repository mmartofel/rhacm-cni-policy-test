# CNI driver check policy for Red Hat OpenShift Advanced Cluster Management for Kubernetes

This repository demonstrates how to check population of an OpenShift clusters for CNI driver configured with Red Hat OpenShift Advance Management for Kubernetes using simple Policy defined.

## Overview

Older version of OpenShift could have OpenShiftSDN CNI driver configured as the one that was default back then. Recent versions, as a default have OVNKubernetes. Major change really.

Evaluating a population of clusters could be troublesome. Thanks to the simple policy that you can easily distingwished with RHACM and that fact can be demonstrated at the UI console.

## Prerequisites

- Access to an OpenShift cluster with cluster-admin privileges.
- install Red Hat Advanced Cluster Management for Kubernetes operator
- configure Red Hat Advanced Cluster Management for Kubernetes at the local cluster
- `oc` or `kubectl` CLI tools installed and configured.

## Quick Start

### 1. Create a required policy

Run this one and only required shell script

```sh
./01-install-cni-configuration-policy.sh
```

you shoud see a new policy named `cni-configuration-policy` created, reporting compliance drifts across your clusters population

![screenshot](images/1.png)

In my case I had one recent version cluster (4.19) `local-cluster` with CNI driver `OVNKubernetes` and one older with `OpenShiftSDN` (4.14) as a CNI driver set. Therefore you see one cluster as compliant and a second as not.

![screenshot](images/2.png)

![screenshot](images/3.png)

if you now check 'View driff' for non compliant cluster, you can easily find out why it complains there

![screenshot](images/4.png)

## Contributing

Contributions and suggestions are welcome! Please open an issue or submit a pull request.

## License

This repository is licensed under the MIT License.


