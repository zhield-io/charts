# Cluster Autoscaler

Cluster Autoscaler adds or removes nodes from the cluster by creating or deleting
VMs. To separate the autoscaling logic (the same for all providers) from the
specifics required to execute it, the latter are hidden behind a different
`CloudProvider` component.

More information: <https://github.com/kubernetes/autoscaler>
