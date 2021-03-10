project_name: "production"

application: helloworld-js {
  label: "Production Sahana Test"
  url: "http://localhost:8080/bundle.js"
  entitlements: {
    allow_same_origin: yes
    core_api_methods: ["me"]
  }
}
