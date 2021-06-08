package = "kong-plugin-helloworld"

version = "0.1.0-1"

source = {
   url = "git//github.com/alcirbarros/kong-plugin-helloworld.git"
}

description = {
   homepage = "https://github.com/alcirbarros/kong-plugin-helloworld",
   license = "MIT"
}

dependencies = {
  "lua >= 5.3",
  "kong >= 0.14"
}

build = {
   type = "builtin",
   modules = { 
        ["kong.plugins.kong-plugin-helloworld.handler"] = "src/handler.lua",
        ["kong.plugins.kong-plugin-helloworld.access"]  = "src/access.lua",
        ["kong.plugins.kong-plugin-helloworld.schema"]  = "src/schema.lua",
   }
}
