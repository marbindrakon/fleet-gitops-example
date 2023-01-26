dns_config
=========

This role manages cluster DNS resources for OpenShift across one or more providers. It presently supports FreeIPA and Route53 providers.

Requirements
------------

For FreeIPA, the freeipa.ansible_freeipa collection and dependencies are required. For Route53, the amazon.aws collection and dependencies are required.

Role Variables
--------------

This role expects the following variables:

* cluster_name - Name of the cluster to be used in DNS records
* cluster_state - Whether the cluster is should be present or absent
* base_domain - The base domain for DNS records
* external_api_vip - The virtual IP for the k8s API
* external_ingress_vip - The virutal IP for the ingress controller
* internal_api_vip - The internal virtual IP for the k8s API
* internal_ingress_vip - The internal virutal IP for the ingress controller
* loadbalancer_type - Can be external or internal. If external, api-int record will be created
* enabled_dns_providers - Dictionary of enabled DNS providers and configuration options
** split_horizon_internal - If true, the internal VIP will be configured in DNS for this provider
