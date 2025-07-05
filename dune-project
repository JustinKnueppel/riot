(lang dune 3.11)
(using mdx 0.4)

(name riot)

(generate_opam_files true)
(cram enable)

(source
 (github riot-ml/riot))

(authors "Leandro Ostera <leandro@abstractmachines.dev>")

(maintainers "Leandro Ostera <leandro@abstractmachines.dev>")

(license MIT)

(pin
 (url "git+https://github.com/riot-ml/rio.git")
 (package (name rio)))

(pin
 (url "git+https://github.com/riot-ml/bytestring.git")
 (package (name bytestring)))

(pin
 (url "git+https://github.com/riot-ml/gluon")
 (package (name gluon)))

(package
 (name riot)
 (synopsis "An actor-model multi-core scheduler for OCaml 5")
 (description
  "Riot is an actor-model multi-core scheduler for OCaml 5. It brings Erlang-style concurrency to the language, where lighweight process communicate via message passing")
 (depends
  bytestring 
  (castore (and :with-test (>= "0.0.2")))
  (config (>= "0.0.1"))
  gluon
  (mdx (and :with-test (>= "2.3.1")))
  (mirage-crypto (>= "2.0.1"))
  (mirage-crypto-rng (>= "2.0.1"))
  (mtime (>= "2.1.0"))
  (ocaml (>= "5.1"))
  (odoc (and :with-doc (>= "2.2.2")))
  (ptime (>= "1.2.0"))
  rio
  (telemetry (>= "0.0.1"))
  (tls (>= "2.0.1"))
  (uri (>= "4.4.0"))
  dune)
 (tags
  (multicore erlang actor "message-passing" processes)))
