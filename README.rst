Zuul-CI AnsiblePlaybookBundle
=============================

zuul-apb is a AnsiblePlaybookBundle for installing zuul-ci on OpenShift or K8
cluster.

It deploys all the required components inside of the project/namespace.

Continer images for the zuul can be build inside (currently only in openshift)
using `SourceToImage`_. This is recommended way, since Deployments and
StatefulSets are sometimes expecting particular things to be fulfilled in the
container. Example repository with s2i scripts can be found here `s2is`_.
It is possible to build those s2i "builder" images also in openshift
(currently enabled by default). If s2i is not enabled, you are responsible
to build the respective images and import them into the registry.

This APB is currently in a POC phase, therefore use it under your responsibility

.. _SourceToImage: https://github.com/openshift/source-to-image
.. _s2is: https://github.com/gtema/s2i-zuul


Notes
-----

Some notes to the usage:

* `dev` APB plan let's you to built-in some of the variables into the resulting
  APB image (`vars/development.yaml` will be loaded if exists). It is
  done explicitly not to require parameters in `dev` plan, since
  specifying so much parameters during development is really frustrating.
* Use of APB under K8 should be supported, but was not tested so far.
* So far the APB was tested using minishift. Production Openshift is next
* `project-config` repo is crucial for zuul. It is also being used by the APB
  to fetch components configuration. from the `project-config` the
  following items will be searched and used:
    - zuul/zuul.conf
    - zuul/main.yaml
    - zuul/logging.conf
    - zuul/variables.yaml
    - nodepool/nodepool.yaml
    - nodepool/logging.conf
    - nodepool/secure.conf
* It is planned to watch for changes in `project-config` repo for the
  components configuration changes and redeploy configMaps/secrets. This
  will, however, require likely a separate pod. It is not done currently, but
  if you are using S2I and webhooks are configured correctly `app` images
  will be rebuild from the `project-config` repo. This will integrate
  `nodepool/elements` directory into the `nodepool-builder` image.
* `zuul_base_revision` and `nodepool_base_revision` properties are used
  to control the corresponding revisions for the component images to be build.

Steps to be used:

* checkout the repository (container is not published in dockerhub)
* setup your local `apb tool`_ tool and configure registries
* from the checked out repositiory root invoke

    $ apb push

* in the Openshift UI find new `zuul-apb` and provision it with `prod` or `dev`
  plan


Usage with minishift:

* start minishift according to `minishift experimental`_
* login in the console as admin and switch to `ansible-service-broker` project
* modify the `broker-config` configMap and disable dockerhub repository,
  otherwise you would not be able to push image into local registry.
  trigger deployment `asb` to start with new config.
* Create `zuul` project and create SA and SCC::

      $ create -f zuul_scc.yaml

* in the checked out repo invoke following::

      $ eval $(minishift docker-env)
      $ apb push                            # to be triggered from UI
      $ apb run --project zuul              #(if you want to provision from CLI)

.. _apb tool: https://github.com/ansibleplaybookbundle/ansible-playbook-bundle
.. _minishift experimental: https://docs.openshift.org/latest/minishift/using/experimental-features.html


Privileged accounts
-------------------

Some Zuul components currently require privileged accounts to run containers:
zuul-executor and nodepool-launcher. Since creating those accounts and granting
respective privileges is not currently possible to be done nicely from APB
a manual procedure is required.

When zuul project exist - invoke from apb root directory
`oc create -f zuul_scc.yaml` to create required SA and SCC.

There is work planned in Zuul to rework those components not to require
privileged accounts.


Importing s2i builder images
----------------------------

If you want to import builder images from external registry and put the
into ImageStream instead of also building them inside of the project::

    for image in 'zuul-scheduler' 'zuul-executor' 'zuul-merger' 'zuul-web' 'zuul-merger' 'nodepool-launcher' 'nodepool-builder'; do \
        src="docker.io/agoncharov/s2i-builder-$image"; \
        dest="172.30.1.1:5000/zuul/s2i-builder-$image:latest"; \
        docker pull $src; \
        docker tag $src $dest; \
        docker push $dest; \
    done;
