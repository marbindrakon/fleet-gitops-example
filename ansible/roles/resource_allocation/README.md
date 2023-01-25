resource_allocation
=========

This role encapsulates the resource allocation logic for OpenShift cluster provisioning. It is not intended to be reusable outside of this context.

Depending on the target platform, this role will perform the following actions:

* Allocate IP addresses from Netbox
* Reserve baremetal nodes in Netbox
* Allocate floating IP addresses in OpenStack

Requirements
------------

This role requires the following collections and their Python dependencies:

* openstack.cloud
* netbox.netbox
* vmware.vmware_rest

Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.


License
-------

Apache 2.0
