self: super:
let
  # See https://github.com/NixOS/nixpkgs/issues/19098
  # and https://github.com/sass/sassc-ruby/pull/166
  patch = builtins.toFile "lto.patch" ''
    diff --git a/ext/extconf.rb b/ext/extconf.rb
    index 08e067c..754988d 100644
    --- a/ext/extconf.rb
    +++ b/ext/extconf.rb
    @@ -25,7 +25,7 @@ if enable_config('march-tune-native', true)
       $CXXFLAGS << ' -march=native -mtune=native'
     end

    -if enable_config('lto', true)
    +if enable_config('lto', false)
       $CFLAGS << ' -flto'
       $CXXFLAGS << ' -flto'
       $LDFLAGS << ' -flto'
  '';
in {
  jekyll = super.jekyll.override (old: {
    bundlerApp = attrs: old.bundlerApp (attrs // {
      gemset = let
        gems = import (attrs.gemdir + "/gemset.nix");
      in super.lib.recursiveUpdate gems {
        sassc.patches = super.lib.optional self.stdenv.isDarwin [ patch ];
      };
    });
  });
}
