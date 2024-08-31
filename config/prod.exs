import Config

# For production, don't forget to configure the url host
# to something meaningful, Phoenix uses this information
# when generating URLs.
#
# Note we also include the path to a cache manifest
# containing the digested version of static files. This
# manifest is generated by the `mix phx.digest` task,
# which you should run after static files are built and
# before starting your production server.
config :teiserver, TeiserverWeb.Endpoint,
  url: [host: "yourdomain.com"],
  https: [
    port: 8888,
    otp_app: :teiserver,
    ciphers: [
      ~c"ECDHE-ECDSA-AES256-GCM-SHA384",
      ~c"ECDHE-RSA-AES256-GCM-SHA384",
      ~c"ECDHE-ECDSA-AES256-SHA384",
      ~c"ECDHE-RSA-AES256-SHA384",
      ~c"ECDHE-ECDSA-DES-CBC3-SHA",
      ~c"ECDH-ECDSA-AES256-GCM-SHA384",
      ~c"ECDH-RSA-AES256-GCM-SHA384",
      ~c"ECDH-ECDSA-AES256-SHA384",
      ~c"ECDH-RSA-AES256-SHA384",
      ~c"DHE-DSS-AES256-GCM-SHA384",
      ~c"DHE-DSS-AES256-SHA256",
      ~c"AES256-GCM-SHA384",
      ~c"AES256-SHA256",
      ~c"ECDHE-ECDSA-AES128-GCM-SHA256",
      ~c"ECDHE-RSA-AES128-GCM-SHA256",
      ~c"ECDHE-ECDSA-AES128-SHA256",
      ~c"ECDHE-RSA-AES128-SHA256",
      ~c"ECDH-ECDSA-AES128-GCM-SHA256",
      ~c"ECDH-RSA-AES128-GCM-SHA256",
      ~c"ECDH-ECDSA-AES128-SHA256",
      ~c"ECDH-RSA-AES128-SHA256",
      ~c"DHE-DSS-AES128-GCM-SHA256",
      ~c"DHE-DSS-AES128-SHA256",
      ~c"AES128-GCM-SHA256",
      ~c"AES128-SHA256",
      ~c"ECDHE-ECDSA-AES256-SHA",
      ~c"ECDHE-RSA-AES256-SHA",
      ~c"DHE-DSS-AES256-SHA",
      ~c"ECDH-ECDSA-AES256-SHA",
      ~c"ECDH-RSA-AES256-SHA",
      ~c"AES256-SHA",
      ~c"ECDHE-ECDSA-AES128-SHA",
      ~c"ECDHE-RSA-AES128-SHA",
      ~c"DHE-DSS-AES128-SHA",
      ~c"ECDH-ECDSA-AES128-SHA",
      ~c"ECDH-RSA-AES128-SHA",
      ~c"AES128-SHA"
    ],
    secure_renegotiate: true,
    reuse_sessions: true,
    honor_cipher_order: true
  ],
  force_ssl: [hsts: true],
  root: ".",
  cache_static_manifest: "priv/static/cache_manifest.json",
  server: true,
  version: Mix.Project.config()[:version]
