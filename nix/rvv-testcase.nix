{ rv32-clang, glibc_multi, llvmForDev, go, buddy-mlir, ammonite, mill, rvv-codegen }:
llvmForDev.stdenv.mkDerivation {
  pname = "rvv-testcase";
  version = "unstable-2023-09-04";
  srcs = [
    ../.github/scripts/ci.sc
    ../tests
  ];
  sourceRoot = ".";
  unpackPhase = ''
    # mill will write data into the working directory, so the workdir cannot be $src as it is not writable
    mkdir -p tests-src
    for src in $srcs; do
      case $src in
        *-ci.sc)
          cp $src ./ci.sc
          ;;
        *-tests)
          cp -r $src/* tests-src
          ;;
      esac
    done
  '';
  nativeBuildInputs = [ rv32-clang glibc_multi llvmForDev.bintools go buddy-mlir ammonite mill ];
  buildPhase = ''
    mkdir -p tests-out

    export CODEGEN_BIN_PATH=${rvv-codegen}/bin/single
    export CODEGEN_INC_PATH=${rvv-codegen}/include
    export CODEGEN_CFG_PATH=${rvv-codegen}/configs

    # amm will write some cache under user.home, it is by default not writable inside some nix sandboxes
    JAVA_OPTS="-Duser.home=$TMPDIR" amm ci.sc buildAllTestCase ./tests-src ./tests-out
  '';
  installPhase = ''
    mkdir -p $out
    cp -r tests-out/{configs,cases} $out
  '';
  dontPatchELF = true;
  dontStrip = true;
  __noChroot = true;
}
