project_name: "production"
application: helloworld-js {
  label: "Renee Looker Extension"
  file: "bundle.js"
  entitlements: {
    core_api_methods: ["me"]
    use_embeds: yes
    allow_same_origin: yes
  }
}
