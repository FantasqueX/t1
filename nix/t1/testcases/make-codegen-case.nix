{ lib, jq, stdenv, rvv-codegen, linkerScript, elaborateConfigJson }:

{ caseName, xLen ? 32, fp ? false, ... }@inputs:
let
  caseNameEscaped = builtins.replaceStrings [ "." ] [ "_" ] caseName;
in
stdenv.mkDerivation (rec {
  name = "codegen.${caseNameEscaped}";

  dontUnpack = true;

  nativeBuildInputs = [ jq ];

  NIX_CFLAGS_COMPILE = [
    "-mabi=ilp32f"
    "-march=rv32gcv"
    "-mno-relax"
    "-static"
    "-mcmodel=medany"
    "-fvisibility=hidden"
    "-nostdlib"
    "-fno-PIC"
    "-I${../../../tests/codegen/override_include}"
    "-I${rvv-codegen}/include"
    "-T" "${linkerScript}"
  ];

  configurePhase = ''
    export vLen=$(jq < ${elaborateConfigJson} .parameter.dLen --exit-status)

    if jq < ${elaborateConfigJson} -r .parameter.extensions[] --exit-status | grep "ve32"; then
      export xLen=32
    else
      export xLen=64
    fi
  '';

  buildPhase = ''
    runHook preBuild

    ${rvv-codegen}/bin/single \
      -VLEN "$vLen" \
      -XLEN "$xLen" \
      -repeat 16 \
      -testfloat3level 1 \
      -configfile ${rvv-codegen}/configs/${caseName}.toml \
      -outputfile ${caseNameEscaped}.S

    ${stdenv.targetPlatform.config}-cc ${caseNameEscaped}.S -o ${name}.elf

    runHook postBuild
  '';

  installPhase = ''
    runHook preInstall

    mkdir -p $out/bin
    cp ${name}.elf $out/bin

    jq --null-input \
      --arg name ${caseNameEscaped} \
      --arg type intrinsic \
      --argjson xLen "$xLen" \
      --argjson vLen "$vLen" \
      --argjson fp ${lib.boolToString fp} \
      --arg elfPath "$out/bin/${name}.elf" \
      '{ "name": "${name}", "type": $type, "xLen": $xLen, "vLen": $vLen, "fp": $fp, "elf": { "path": $elfPath } }' \
      > $out/${name}.json

    runHook postInstall
  '';

  meta.description = "Test case '${caseNameEscaped}', generated by [rvv-codegen](https://github.com/ksco/riscv-vector-tests).";

  dontFixup = true;
} // inputs)
