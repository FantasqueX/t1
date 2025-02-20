# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  arithmetic = {
    pname = "arithmetic";
    version = "f9aa8449d9c3905fe5083bcd2f2f2f7fbcefd240";
    src = fetchFromGitHub {
      owner = "sequencer";
      repo = "arithmetic";
      rev = "f9aa8449d9c3905fe5083bcd2f2f2f7fbcefd240";
      fetchSubmodules = false;
      sha256 = "sha256-aAyxDlA5mvZMxpaswAWg2gO58OPxI7ES0OaowaXZQ70=";
    };
    date = "2025-02-19";
  };
  chisel = {
    pname = "chisel";
    version = "7b029eed5c6fef3d06155de6aa82deb8b9ac2288";
    src = fetchFromGitHub {
      owner = "chipsalliance";
      repo = "chisel";
      rev = "7b029eed5c6fef3d06155de6aa82deb8b9ac2288";
      fetchSubmodules = false;
      sha256 = "sha256-y6gqMusOS711r2iyTHTno6Wzt7mkY9jE+SO7RAqG6YE=";
    };
    date = "2025-02-20";
  };
  chisel-interface = {
    pname = "chisel-interface";
    version = "04886c9a028a043866a008c9409996e1d8075d9a";
    src = fetchFromGitHub {
      owner = "chipsalliance";
      repo = "chisel-interface";
      rev = "04886c9a028a043866a008c9409996e1d8075d9a";
      fetchSubmodules = false;
      sha256 = "sha256-1JWXA2rtuAFN4B4lys3VDYPVdfS29AEQvKKHLWzZK7U=";
    };
    date = "2025-02-19";
  };
  riscv-opcodes = {
    pname = "riscv-opcodes";
    version = "8899b32f218c85bf2559fa95f226bc2533316802";
    src = fetchFromGitHub {
      owner = "riscv";
      repo = "riscv-opcodes";
      rev = "8899b32f218c85bf2559fa95f226bc2533316802";
      fetchSubmodules = false;
      sha256 = "sha256-7CV/T8gnE7+ZPfYbn38Zx8fYUosTc8bt93wk5nmxu2c=";
    };
    date = "2025-02-14";
  };
  rvdecoderdb = {
    pname = "rvdecoderdb";
    version = "4572bb92fa458f27228ec0ad1aada2a9b7ea92d1";
    src = fetchFromGitHub {
      owner = "sequencer";
      repo = "rvdecoderdb";
      rev = "4572bb92fa458f27228ec0ad1aada2a9b7ea92d1";
      fetchSubmodules = false;
      sha256 = "sha256-h6lUBQFeLfWY4cjyp/YImISUMcUvg15V/EJxc1RJoIQ=";
    };
    date = "2025-02-06";
  };
}
