# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  arithmetic = {
    pname = "arithmetic";
    version = "3ee6a01d3a078782463ac337561f4949906d500e";
    src = fetchFromGitHub {
      owner = "sequencer";
      repo = "arithmetic";
      rev = "3ee6a01d3a078782463ac337561f4949906d500e";
      fetchSubmodules = false;
      sha256 = "sha256-TDYJMD5BGuROGHc3lOsEG0aFQDXlVXWB0xZ1pMcS7g0=";
    };
    date = "2025-03-20";
  };
  chisel = {
    pname = "chisel";
    version = "1d627ec4d2c624332bedf08891b68bb082965a0e";
    src = fetchFromGitHub {
      owner = "chipsalliance";
      repo = "chisel";
      rev = "1d627ec4d2c624332bedf08891b68bb082965a0e";
      fetchSubmodules = false;
      sha256 = "sha256-sUgp16QHxArV6Ffhtfb9UcgDIqbKPmRGtkdFzaJJ08Y=";
    };
    date = "2025-03-24";
  };
  chisel-interface = {
    pname = "chisel-interface";
    version = "a61c4d8dbbe25da7c267d03e2be0e24638258023";
    src = fetchFromGitHub {
      owner = "chipsalliance";
      repo = "chisel-interface";
      rev = "a61c4d8dbbe25da7c267d03e2be0e24638258023";
      fetchSubmodules = false;
      sha256 = "sha256-cQ0ybo4sxt5X3UOH5NT1f8SmXV+4zeaTo/0zUIr/Kzg=";
    };
    date = "2025-03-20";
  };
  riscv-opcodes = {
    pname = "riscv-opcodes";
    version = "d0c4b0b4ef4c56fbd0499b010342b8107585233e";
    src = fetchFromGitHub {
      owner = "riscv";
      repo = "riscv-opcodes";
      rev = "d0c4b0b4ef4c56fbd0499b010342b8107585233e";
      fetchSubmodules = false;
      sha256 = "sha256-vJigg7GZDUWHmYTc4dsCon7JBs6IW1yY1GRPLfBqkMc=";
    };
    date = "2025-03-19";
  };
  rvdecoderdb = {
    pname = "rvdecoderdb";
    version = "c7acc990037e6b984ab6defb65fdc82f9151c656";
    src = fetchFromGitHub {
      owner = "sequencer";
      repo = "rvdecoderdb";
      rev = "c7acc990037e6b984ab6defb65fdc82f9151c656";
      fetchSubmodules = false;
      sha256 = "sha256-iGZiYBDaUIej9iYAtHWsINAq2LzETKhiQqJB8buA1v4=";
    };
    date = "2025-03-21";
  };
}
