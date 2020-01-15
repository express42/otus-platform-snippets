local common(name) = {

  service: kube.Service(name) {
    target_pod:: $.deployment.spec.template,
  },

  deployment: kube.Deployment(name) {
    spec+: {
      template+: {
        spec+: {
          containers_: {
            common: kube.Container("common") {
              ports: [{containerPort: 80}],
              securityContext: {
                readOnlyRootFilesystem: true,
                runAsNonRoot: true,
                runAsUser: 10001,
                capabilities: {
                  drop:["all"],
                  add: ["NET_BIND_SERVICE"],
                },
              },
            },
          },
        },
      },
    },
  },
};
