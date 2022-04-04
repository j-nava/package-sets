{-
Welcome to your new Dhall package-set!

Below are instructions for how to edit this file for most use
cases, so that you don't need to know Dhall to use it.

## Use Cases

Most will want to do one or both of these options:
1. Override/Patch a package's dependency
2. Add a package not already in the default package set

This file will continue to work whether you use one or both options.
Instructions for each option are explained below.

### Overriding/Patching a package

Purpose:
- Change a package's dependency to a newer/older release than the
    default package set's release
- Use your own modified version of some dependency that may
    include new API, changed API, removed API by
    using your custom git repo of the library rather than
    the package set's repo

Syntax:
where `entityName` is one of the following:
- dependencies
- repo
- version
-------------------------------
let upstream = --
in  upstream
  with packageName.entityName = "new value"
-------------------------------

Example:
-------------------------------
let upstream = --
in  upstream
  with halogen.version = "master"
  with halogen.repo = "https://example.com/path/to/git/repo.git"

  with halogen-vdom.version = "v4.0.0"
  with halogen-vdom.dependencies = [ "extra-dependency" ] # halogen-vdom.dependencies
-------------------------------

### Additions

Purpose:
- Add packages that aren't already included in the default package set

Syntax:
where `<version>` is:
- a tag (i.e. "v4.0.0")
- a branch (i.e. "master")
- commit hash (i.e. "701f3e44aafb1a6459281714858fadf2c4c2a977")
-------------------------------
let upstream = --
in  upstream
  with new-package-name =
    { dependencies =
       [ "dependency1"
       , "dependency2"
       ]
    , repo =
       "https://example.com/path/to/git/repo.git"
    , version =
        "<version>"
    }
-------------------------------

Example:
-------------------------------
let upstream = --
in  upstream
  with prelude.repo = "https://github.com/kl0tl/purescript-prelude.git"
  with prelude.version = "es-modules"
  with effect.repo = "https://github.com/kl0tl/purescript-effect.git"
  with effect.version = "es-modules"
  with console.repo = "https://github.com/kl0tl/purescript-console.git"
  with console.version = "es-modules"
  with benchotron =
      { dependencies =
          [ "arrays"
          , "exists"
          , "profunctor"
          , "strings"
          , "quickcheck"
          , "lcg"
          , "transformers"
          , "foldable-traversable"
          , "exceptions"
          , "node-fs"
          , "node-buffer"
          , "node-readline"
          , "datetime"
          , "now"
          ]
      , repo =
          "https://github.com/hdgarrood/purescript-benchotron.git"
      , version =
          "v7.0.0"
      }
-------------------------------
-}
let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.14.5-20220203/packages.dhall sha256:f8905bf5d7ce9d886cf4ef1c5893ab55de0b30c82c2b4137f272d075000fbc50

in  upstream
  with metadata.version = "v0.15.0"
  with prelude.repo = "https://github.com/kl0tl/purescript-prelude.git"
  with prelude.version = "es-modules"
  with effect.repo = "https://github.com/kl0tl/purescript-effect.git"
  with effect.version = "es-modules"
  with console.repo = "https://github.com/kl0tl/purescript-console.git"
  with console.version = "es-modules"
  with web-html.repo = "https://github.com/kl0tl/purescript-web-html.git"
  with web-html.version = "es-modules"
  with decimals.repo = "https://github.com/kl0tl/purescript-decimals.git"
  with decimals.version = "es-modules"
  with js-uri.repo = "https://github.com/kl0tl/purescript-js-uri.git"
  with js-uri.version = "es-modules"
  with unsafe-reference.repo = "https://github.com/kl0tl/purescript-unsafe-reference.git"
  with unsafe-reference.version = "es-modules"
  with affjax.repo = "https://github.com/kl0tl/purescript-affjax.git"
  with affjax.version = "es-modules"
  with halogen-vdom.repo = "https://github.com/kl0tl/purescript-halogen-vdom.git"
  with halogen-vdom.version = "es-modules"
  with formatters.repo = "https://github.com/kl0tl/purescript-formatters.git"
  with formatters.version = "es-modules"
  with web-clipboard.repo = "https://github.com/kl0tl/purescript-web-clipboard.git"
  with web-clipboard.version = "es-modules"
  with web-xhr.repo = "https://github.com/kl0tl/purescript-web-xhr.git"
  with web-xhr.version = "es-modules"
  with argonaut-core.repo = "https://github.com/kl0tl/purescript-argonaut-core.git"
  with argonaut-core.version = "es-modules"
  with avar.repo = "https://github.com/kl0tl/purescript-avar.git"
  with avar.version = "es-modules"
  with numbers.repo = "https://github.com/kl0tl/purescript-numbers.git"
  with numbers.version = "es-modules"
  with arrays.repo = "https://github.com/kl0tl/purescript-arrays.git"
  with arrays.version = "es-modules"
  with react-basic-classic.repo = "https://github.com/kl0tl/purescript-react-basic-classic.git"
  with react-basic-classic.version = "es-modules"
  with aff.repo = "https://github.com/kl0tl/purescript-aff.git"
  with aff.version = "es-modules"
  with st.repo = "https://github.com/kl0tl/purescript-st.git"
  with st.version = "es-modules"
  with exceptions.repo = "https://github.com/kl0tl/purescript-exceptions.git"
  with exceptions.version = "es-modules"
  with simple-json.repo = "https://github.com/kl0tl/purescript-simple-json.git"
  with simple-json.version = "es-modules"
  with foreign-generic.repo = "https://github.com/kl0tl/purescript-foreign-generic.git"
  with foreign-generic.version = "es-modules"
  with integers.repo = "https://github.com/kl0tl/purescript-integers.git"
  with integers.version = "es-modules"
  with math.repo = "https://github.com/kl0tl/purescript-math.git"
  with math.version = "es-modules"
  with now.repo = "https://github.com/kl0tl/purescript-now.git"
  with now.version = "es-modules"
  with js-date.repo = "https://github.com/kl0tl/purescript-js-date.git"
  with js-date.version = "es-modules"
  with partial.repo = "https://github.com/kl0tl/purescript-partial.git"
  with partial.version = "es-modules"
  with web-storage.repo = "https://github.com/kl0tl/purescript-web-storage.git"
  with web-storage.version = "es-modules"
  with web-file.repo = "https://github.com/kl0tl/purescript-web-file.git"
  with web-file.version = "es-modules"
  with web-events.repo = "https://github.com/kl0tl/purescript-web-events.git"
  with web-events.version = "es-modules"
  with web-dom.repo = "https://github.com/kl0tl/purescript-web-dom.git"
  with web-dom.version = "es-modules"
  with web-uievents.repo = "https://github.com/kl0tl/purescript-web-uievents.git"
  with web-uievents.version = "es-modules"
  with web-touchevents.repo = "https://github.com/kl0tl/purescript-web-touchevents.git"
  with web-touchevents.version = "es-modules"
  with unfoldable.repo = "https://github.com/kl0tl/purescript-unfoldable.git"
  with unfoldable.version = "es-modules"
  with unsafe-coerce.repo = "https://github.com/kl0tl/purescript-unsafe-coerce.git"
  with unsafe-coerce.version = "es-modules"
  with strings.repo = "https://github.com/kl0tl/purescript-strings.git"
  with strings.version = "es-modules"
  with refs.repo = "https://github.com/kl0tl/purescript-refs.git"
  with refs.version = "es-modules"
  with record.repo = "https://github.com/kl0tl/purescript-record.git"
  with record.version = "es-modules"
  with nullable.repo = "https://github.com/kl0tl/purescript-nullable.git"
  with nullable.version = "es-modules"
  with lazy.repo = "https://github.com/kl0tl/purescript-lazy.git"
  with lazy.version = "es-modules"
  with functions.repo = "https://github.com/kl0tl/purescript-functions.git"
  with functions.version = "es-modules"
  with foreign.repo = "https://github.com/kl0tl/purescript-foreign.git"
  with foreign.version = "es-modules"
  with foreign-object.repo = "https://github.com/kl0tl/purescript-foreign-object.git"
  with foreign-object.version = "es-modules"
  with foldable-traversable.repo = "https://github.com/kl0tl/purescript-foldable-traversable.git"
  with foldable-traversable.version = "es-modules"
  with enums.repo = "https://github.com/kl0tl/purescript-enums.git"
  with enums.version = "es-modules"
  with debug.repo = "https://github.com/kl0tl/purescript-debug.git"
  with debug.version = "es-modules"
  with datetime.repo = "https://github.com/kl0tl/purescript-datetime.git"
  with datetime.version = "es-modules"
  with control.repo = "https://github.com/kl0tl/purescript-control.git"
  with control.version = "es-modules"

  with formatters.repo = "https://github.com/working-group-purescript-es/purescript-formatters.git"
  with formatters.version = "es-modules"
  with literals.repo = "https://github.com/working-group-purescript-es/purescript-literals.git"
  with literals.version = "es-modules"
  with lists.repo = "https://github.com/working-group-purescript-es/purescript-lists.git"
  with lists.version = "es-modules"
  with react-basic.repo = "https://github.com/working-group-purescript-es/purescript-react-basic.git"
  with react-basic.version = "es-modules"
  with react-basic-dom.repo = "https://github.com/working-group-purescript-es/purescript-react-basic-dom.git"
  with react-basic-dom.version = "es-modules"
  with react-basic-hooks.repo = "https://github.com/working-group-purescript-es/purescript-react-basic-hooks.git"
  with react-basic-hooks.version = "es-modules"
  with react-basic-emotion.repo = "https://github.com/working-group-purescript-es/purescript-react-basic-emotion.git"
  with react-basic-emotion.version = "es-modules"
  with stringutils.repo = "https://github.com/working-group-purescript-es/purescript-stringutils.git"
  with stringutils.version = "es-modules"
  with untagged-union.repo = "https://github.com/working-group-purescript-es/purescript-untagged-union.git"
  with untagged-union.version = "es-modules"
  with spec.repo = "https://github.com/working-group-purescript-es/purescript-spec.git"
  with spec.version = "es-modules"

  with elmish.repo = "https://github.com/working-group-purescript-es/purescript-elmish.git"
  with elmish.version = "es-modules"
  with elmish-enzyme.repo = "https://github.com/working-group-purescript-es/purescript-elmish-enzyme.git"
  with elmish-enzyme.version = "es-modules"


  with framer-motion.version = "es-modules"
  with halogen-hooks.repo = "https://github.com/working-group-purescript-es/purescript-halogen-hooks.git"
  with halogen-hooks.version = "es-modules"
  with aff-promise.repo = "https://github.com/working-group-purescript-es/purescript-aff-promise.git"
  with aff-promise.version = "es-modules"

  with node-buffer.repo = "https://github.com/working-group-purescript-es/purescript-node-buffer.git"
  with node-buffer.version = "e45b2675235608238d6556ef221deaac546be505"
  with node-fs.repo = "https://github.com/working-group-purescript-es/purescript-node-fs.git"
  with node-fs.version = "2377f5b78641a16dc24e1245f8048fedc8216417"
  with node-path.repo = "https://github.com/working-group-purescript-es/purescript-node-path.git"
  with node-path.version = "fb8e9e78de9df739f7ff32d01c93ccd1e7f89a35"
  with node-child-process.repo = "https://github.com/working-group-purescript-es/purescript-node-child-process.git"
  with node-child-process.version = "261c4e50e0ea3a8e8a41f145bb2253710f8aa59e"
  with node-streams.repo = "https://github.com/working-group-purescript-es/purescript-node-streams.git"
  with node-streams.version = "bb765970e14ff12b8caf2f465e056105eb2dccd6"
  with node-process.repo = "https://github.com/working-group-purescript-es/purescript-node-process.git"
  with node-process.version = "9fab9d95ab3e52a4a923ef407cfc3166504d7f0c"
  with node-readline.repo = "https://github.com/working-group-purescript-es/purescript-node-readline.git"
  with node-readline.version = "a16942f33c9159fabcf542ad8ec81b74940c5047"
  with node-url.repo = "https://github.com/working-group-purescript-es/purescript-node-url.git"
  with node-url.version = "46f047f8f02300dc3c7c1212821bb8f25e5dd3e9"

  with node-net.repo = "https://github.com/working-group-purescript-es/purescript-node-net.git"
  with node-net.version = "es-modules"
  with node-http.repo = "https://github.com/working-group-purescript-es/purescript-node-http.git"
  with node-http.version = "es-modules"

  with httpure.repo = "https://github.com/working-group-purescript-es/purescript-httpure.git"
  with httpure.version = "es-modules"
  with milkis.repo = "https://github.com/working-group-purescript-es/purescript-milkis.git"
  with milkis.version = "es-modules"

  with `assert`.repo
       = "https://github.com/working-group-purescript-es/purescript-assert.git"
  with `assert`.version = "es-modules"

  with js-timers.version = "es-modules"
  with js-timers.repo = "https://github.com/2jt/purescript-js-timers.git"

  with random.version = "es-modules"
  with random.repo = "https://github.com/2jt/purescript-random.git"

  with quickcheck.version = "es-modules"
  with quickcheck.repo = "https://github.com/2jt/purescript-quickcheck.git"

  with test-unit.version = "es-modules"
  with test-unit.repo = "https://github.com/2jt/purescript-test-unit.git"

  with express.version = "es-modules"
  with express.repo = "https://github.com/2jt/purescript-express.git"

  with language-cst-parser =
    { dependencies =
      [ "arrays"
      , "const"
      , "effect"
      , "either"
      , "foldable-traversable"
      , "free"
      , "functors"
      , "maybe"
      , "numbers"
      , "ordered-collections"
      , "strings"
      , "transformers"
      , "tuples"
      , "typelevel-prelude"
      ]
    , repo = "https://github.com/natefaubion/purescript-language-cst-parser.git"
    , version = "v0.9.3"
    }
  with plumage =
    { repo = "https://github.com/murmuras-tech/plumage.git"
    , version = "es-modules"
    , dependencies =
      [ "arrays"
      , "colors"
      , "console"
      , "debug"
      , "effect"
      , "foldable-traversable"
      , "foreign"
      , "foreign-object"
      , "framer-motion"
      , "integers"
      , "literals"
      , "maybe"
      , "nullable"
      , "prelude"
      , "psci-support"
      , "react-basic"
      , "react-basic-dom"
      , "react-basic-emotion"
      , "react-basic-hooks"
      , "record"
      , "refs"
      , "tuples"
      , "typelevel-prelude"
      , "unsafe-coerce"
      , "untagged-union"
      , "web-dom"
      , "web-html"
      ]
    }
