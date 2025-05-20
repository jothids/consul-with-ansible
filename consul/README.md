Role Name
=========

This role can be used to deploy Hashicorp Consul Server on Linux Distributions.

Requirements
------------

This role is created to be used with ansible-navigator. Make sure to install and configure ansible navigator on ansible controller.

Role Variables
--------------

### Default
Default Variables defined in this role. This can be edited or used as it is.

    consul_group:       # Default group name (consul)
    consul_user:        # Default service username (consul)
    consul_version:     # Default consul version (1.21.0)
    consul_dns:         # Default consul dns name (consul)
    consul_datacenter:  # Default name for consul data center (dc1)
    log_level:          # Default log level (INFO)

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Following Playbook is can be used to deploy consul server in server mode. It will automatically create required certs. In your inventory, create a server block named "consul_servers"

    ---
    - name: consul server
      hosts:  consul_servers
      roles:
         - consul

License
N/A

Author Information
------------------
Dhanushka Jothirathne - 2025
