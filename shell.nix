with import <nixpkgs> { };
mkShell {

  name = "env";
  buildInputs = [
    (emscripten.override { binaryen = (binaryen.override { nodejs = nodejs-14_x; }); })
  ];

  shellHook = ''
    echo ":emscripten:"
  '';

}