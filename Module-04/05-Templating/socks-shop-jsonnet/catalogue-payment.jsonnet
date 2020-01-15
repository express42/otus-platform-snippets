{
  catalogue: common("catalogue") {
    deployment+: {
      spec+: {
        template+: {
          spec+: {
            containers_+: {
              common+: {
                name: "catalogue",
                image: "weaveworksdemos/catalogue:0.3.5",
              },
            },
          },
        },
      },
    },
  },

  payment: common("payment") {
    deployment+: {
      spec+: {
        template+: {
          spec+: {
            containers_+: {
              common+: {
                name: "payment",
                image: "weaveworksdemos/payment:0.4.3",
              },
            },
          },
        },
      },
    },
  },
}

