{ fetchurl }: {

  "com.eed3si9n_shaded-jawn-parser_2.13-1.3.2" = fetchurl {
    name = "com.eed3si9n_shaded-jawn-parser_2.13-1.3.2";
    hash = "sha256-k0UsS5J5CXho/H4FngEcxAkNJ2ZjpecqDmKBvxIMuBs=";
    url = "https://repo1.maven.org/maven2/com/eed3si9n/shaded-jawn-parser_2.13/1.3.2/shaded-jawn-parser_2.13-1.3.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/shaded-jawn-parser_2.13-1.3.2.pom"
            
      downloadedFile=$TMPDIR/shaded-jawn-parser_2.13-1.3.2.jar
      tryDownload "https://repo1.maven.org/maven2/com/eed3si9n/shaded-jawn-parser_2.13/1.3.2/shaded-jawn-parser_2.13-1.3.2.jar"
      cp -v "$TMPDIR/shaded-jawn-parser_2.13-1.3.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/eed3si9n/shaded-jawn-parser_2.13/1.3.2";
  };

  "com.eed3si9n_shaded-scalajson_2.13-1.0.0-M4" = fetchurl {
    name = "com.eed3si9n_shaded-scalajson_2.13-1.0.0-M4";
    hash = "sha256-JyvPek41KleFIS5g4bqLm+qUw5FlX51/rnvv/BT2pk0=";
    url = "https://repo1.maven.org/maven2/com/eed3si9n/shaded-scalajson_2.13/1.0.0-M4/shaded-scalajson_2.13-1.0.0-M4.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/shaded-scalajson_2.13-1.0.0-M4.pom"
            
      downloadedFile=$TMPDIR/shaded-scalajson_2.13-1.0.0-M4.jar
      tryDownload "https://repo1.maven.org/maven2/com/eed3si9n/shaded-scalajson_2.13/1.0.0-M4/shaded-scalajson_2.13-1.0.0-M4.jar"
      cp -v "$TMPDIR/shaded-scalajson_2.13-1.0.0-M4.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/eed3si9n/shaded-scalajson_2.13/1.0.0-M4";
  };

  "com.eed3si9n_sjson-new-core_2.13-0.10.1" = fetchurl {
    name = "com.eed3si9n_sjson-new-core_2.13-0.10.1";
    hash = "sha256-sFHoDAQBTHju2EgUOPuO9tM/SLAdb8X/oNSnar0iYoQ=";
    url = "https://repo1.maven.org/maven2/com/eed3si9n/sjson-new-core_2.13/0.10.1/sjson-new-core_2.13-0.10.1.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/sjson-new-core_2.13-0.10.1.pom"
            
      downloadedFile=$TMPDIR/sjson-new-core_2.13-0.10.1.jar
      tryDownload "https://repo1.maven.org/maven2/com/eed3si9n/sjson-new-core_2.13/0.10.1/sjson-new-core_2.13-0.10.1.jar"
      cp -v "$TMPDIR/sjson-new-core_2.13-0.10.1.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/eed3si9n/sjson-new-core_2.13/0.10.1";
  };

  "com.eed3si9n_sjson-new-core_2.13-0.9.0" = fetchurl {
    name = "com.eed3si9n_sjson-new-core_2.13-0.9.0";
    hash = "sha256-WlJsXRKj77jzoFN6d1V/+jAEl37mxggg85F3o8oD+bY=";
    url = "https://repo1.maven.org/maven2/com/eed3si9n/sjson-new-core_2.13/0.9.0/sjson-new-core_2.13-0.9.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/sjson-new-core_2.13-0.9.0.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/eed3si9n/sjson-new-core_2.13/0.9.0";
  };

  "com.eed3si9n_sjson-new-scalajson_2.13-0.10.1" = fetchurl {
    name = "com.eed3si9n_sjson-new-scalajson_2.13-0.10.1";
    hash = "sha256-DBGJ34c7lyt3m4o5ULwsRk1xPqtHHHKcNgU4nlO/dJY=";
    url = "https://repo1.maven.org/maven2/com/eed3si9n/sjson-new-scalajson_2.13/0.10.1/sjson-new-scalajson_2.13-0.10.1.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/sjson-new-scalajson_2.13-0.10.1.pom"
            
      downloadedFile=$TMPDIR/sjson-new-scalajson_2.13-0.10.1.jar
      tryDownload "https://repo1.maven.org/maven2/com/eed3si9n/sjson-new-scalajson_2.13/0.10.1/sjson-new-scalajson_2.13-0.10.1.jar"
      cp -v "$TMPDIR/sjson-new-scalajson_2.13-0.10.1.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/eed3si9n/sjson-new-scalajson_2.13/0.10.1";
  };

  "com.fasterxml_oss-parent-41" = fetchurl {
    name = "com.fasterxml_oss-parent-41";
    hash = "sha256-Lz63NGj0J8xjePtb7p69ACd08meStmdjmgtoh9zp2tQ=";
    url = "https://repo1.maven.org/maven2/com/fasterxml/oss-parent/41/oss-parent-41.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/oss-parent-41.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/fasterxml/oss-parent/41";
  };

  "com.fasterxml_oss-parent-50" = fetchurl {
    name = "com.fasterxml_oss-parent-50";
    hash = "sha256-2z6+ukMOEKSrgEACAV2Qo5AF5bBFbMhoZVekS4VelPQ=";
    url = "https://repo1.maven.org/maven2/com/fasterxml/oss-parent/50/oss-parent-50.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/oss-parent-50.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/fasterxml/oss-parent/50";
  };

  "com.fasterxml_oss-parent-58" = fetchurl {
    name = "com.fasterxml_oss-parent-58";
    hash = "sha256-wVCyn9u4Q5PMWSigrfRD2c90jacWbffIBxjXZq/VOSw=";
    url = "https://repo1.maven.org/maven2/com/fasterxml/oss-parent/58/oss-parent-58.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/oss-parent-58.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/fasterxml/oss-parent/58";
  };

  "com.lihaoyi_fansi_2.13-0.5.0" = fetchurl {
    name = "com.lihaoyi_fansi_2.13-0.5.0";
    hash = "sha256-iRaKoBsS7VOiQA0yj/wRNKo2NCHWteW0gM99kKObdns=";
    url = "https://repo1.maven.org/maven2/com/lihaoyi/fansi_2.13/0.5.0/fansi_2.13-0.5.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/fansi_2.13-0.5.0.pom"
            
      downloadedFile=$TMPDIR/fansi_2.13-0.5.0.jar
      tryDownload "https://repo1.maven.org/maven2/com/lihaoyi/fansi_2.13/0.5.0/fansi_2.13-0.5.0.jar"
      cp -v "$TMPDIR/fansi_2.13-0.5.0.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/lihaoyi/fansi_2.13/0.5.0";
  };

  "com.lihaoyi_fansi_3-0.5.0" = fetchurl {
    name = "com.lihaoyi_fansi_3-0.5.0";
    hash = "sha256-LBJpOQv1O5lM5QVBMp4to7u3N8dCmqg/lxEi6mVmgPo=";
    url = "https://repo1.maven.org/maven2/com/lihaoyi/fansi_3/0.5.0/fansi_3-0.5.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/fansi_3-0.5.0.pom"
            
      downloadedFile=$TMPDIR/fansi_3-0.5.0.jar
      tryDownload "https://repo1.maven.org/maven2/com/lihaoyi/fansi_3/0.5.0/fansi_3-0.5.0.jar"
      cp -v "$TMPDIR/fansi_3-0.5.0.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/lihaoyi/fansi_3/0.5.0";
  };

  "com.lihaoyi_geny_2.13-1.1.0" = fetchurl {
    name = "com.lihaoyi_geny_2.13-1.1.0";
    hash = "sha256-z9oB4D+MOO9BqE/1pf/E4NGbxHTHsoS9N9TPW/7ofA4=";
    url = "https://repo1.maven.org/maven2/com/lihaoyi/geny_2.13/1.1.0/geny_2.13-1.1.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/geny_2.13-1.1.0.pom"
            
      downloadedFile=$TMPDIR/geny_2.13-1.1.0.jar
      tryDownload "https://repo1.maven.org/maven2/com/lihaoyi/geny_2.13/1.1.0/geny_2.13-1.1.0.jar"
      cp -v "$TMPDIR/geny_2.13-1.1.0.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/lihaoyi/geny_2.13/1.1.0";
  };

  "com.lihaoyi_geny_2.13-1.1.1" = fetchurl {
    name = "com.lihaoyi_geny_2.13-1.1.1";
    hash = "sha256-+gQ8X4oSRU30RdF5kE2Gn8nxmo3RJEShiEyyzUJd088=";
    url = "https://repo1.maven.org/maven2/com/lihaoyi/geny_2.13/1.1.1/geny_2.13-1.1.1.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/geny_2.13-1.1.1.pom"
            
      downloadedFile=$TMPDIR/geny_2.13-1.1.1.jar
      tryDownload "https://repo1.maven.org/maven2/com/lihaoyi/geny_2.13/1.1.1/geny_2.13-1.1.1.jar"
      cp -v "$TMPDIR/geny_2.13-1.1.1.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/lihaoyi/geny_2.13/1.1.1";
  };

  "com.lihaoyi_geny_3-1.0.0" = fetchurl {
    name = "com.lihaoyi_geny_3-1.0.0";
    hash = "sha256-gyZV3FMH1nlWfPJ0nAN3y08zzWtW4AYPo1A3oaMraUY=";
    url = "https://repo1.maven.org/maven2/com/lihaoyi/geny_3/1.0.0/geny_3-1.0.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/geny_3-1.0.0.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/lihaoyi/geny_3/1.0.0";
  };

  "com.lihaoyi_geny_3-1.1.1" = fetchurl {
    name = "com.lihaoyi_geny_3-1.1.1";
    hash = "sha256-DtsM1VVr7WxRM+YRjjVDOkfCqXzp2q9FwlSMgoD/+ow=";
    url = "https://repo1.maven.org/maven2/com/lihaoyi/geny_3/1.1.1/geny_3-1.1.1.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/geny_3-1.1.1.pom"
            
      downloadedFile=$TMPDIR/geny_3-1.1.1.jar
      tryDownload "https://repo1.maven.org/maven2/com/lihaoyi/geny_3/1.1.1/geny_3-1.1.1.jar"
      cp -v "$TMPDIR/geny_3-1.1.1.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/lihaoyi/geny_3/1.1.1";
  };

  "com.lihaoyi_mainargs_2.13-0.5.0" = fetchurl {
    name = "com.lihaoyi_mainargs_2.13-0.5.0";
    hash = "sha256-P3cYiWvt2oPKGxw5B0etnETDP3dU2QD/3ExJHeWh6ds=";
    url = "https://repo1.maven.org/maven2/com/lihaoyi/mainargs_2.13/0.5.0/mainargs_2.13-0.5.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/mainargs_2.13-0.5.0.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/lihaoyi/mainargs_2.13/0.5.0";
  };

  "com.lihaoyi_mainargs_2.13-0.7.0" = fetchurl {
    name = "com.lihaoyi_mainargs_2.13-0.7.0";
    hash = "sha256-JLN3zk3VYI8RkiLMqnB1RGGW+xyvQyEdUMpY+RPtY3s=";
    url = "https://repo1.maven.org/maven2/com/lihaoyi/mainargs_2.13/0.7.0/mainargs_2.13-0.7.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/mainargs_2.13-0.7.0.pom"
            
      downloadedFile=$TMPDIR/mainargs_2.13-0.7.0.jar
      tryDownload "https://repo1.maven.org/maven2/com/lihaoyi/mainargs_2.13/0.7.0/mainargs_2.13-0.7.0.jar"
      cp -v "$TMPDIR/mainargs_2.13-0.7.0.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/lihaoyi/mainargs_2.13/0.7.0";
  };

  "com.lihaoyi_mainargs_2.13-0.7.6" = fetchurl {
    name = "com.lihaoyi_mainargs_2.13-0.7.6";
    hash = "sha256-3VNPfYCWjDt/Sln9JRJ3/aqxZT72ZqwdVdE7ONtpGXM=";
    url = "https://repo1.maven.org/maven2/com/lihaoyi/mainargs_2.13/0.7.6/mainargs_2.13-0.7.6.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/mainargs_2.13-0.7.6.pom"
            
      downloadedFile=$TMPDIR/mainargs_2.13-0.7.6.jar
      tryDownload "https://repo1.maven.org/maven2/com/lihaoyi/mainargs_2.13/0.7.6/mainargs_2.13-0.7.6.jar"
      cp -v "$TMPDIR/mainargs_2.13-0.7.6.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/lihaoyi/mainargs_2.13/0.7.6";
  };

  "com.lihaoyi_mainargs_3-0.5.0" = fetchurl {
    name = "com.lihaoyi_mainargs_3-0.5.0";
    hash = "sha256-Oh+m4R9bw/gniF2OSJDlzj3dw9jJjHaClbtCY0w2bDs=";
    url = "https://repo1.maven.org/maven2/com/lihaoyi/mainargs_3/0.5.0/mainargs_3-0.5.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/mainargs_3-0.5.0.pom"
            
      downloadedFile=$TMPDIR/mainargs_3-0.5.0.jar
      tryDownload "https://repo1.maven.org/maven2/com/lihaoyi/mainargs_3/0.5.0/mainargs_3-0.5.0.jar"
      cp -v "$TMPDIR/mainargs_3-0.5.0.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/lihaoyi/mainargs_3/0.5.0";
  };

  "com.lihaoyi_mill-main-api_2.13-0.12.8-1-46e216" = fetchurl {
    name = "com.lihaoyi_mill-main-api_2.13-0.12.8-1-46e216";
    hash = "sha256-4uPDK4pTRGogIMWaYpRhWg+D8C2gDvaX88/x47X06Ls=";
    url = "https://repo1.maven.org/maven2/com/lihaoyi/mill-main-api_2.13/0.12.8-1-46e216/mill-main-api_2.13-0.12.8-1-46e216.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/mill-main-api_2.13-0.12.8-1-46e216.pom"
            
      downloadedFile=$TMPDIR/mill-main-api_2.13-0.12.8-1-46e216.jar
      tryDownload "https://repo1.maven.org/maven2/com/lihaoyi/mill-main-api_2.13/0.12.8-1-46e216/mill-main-api_2.13-0.12.8-1-46e216.jar"
      cp -v "$TMPDIR/mill-main-api_2.13-0.12.8-1-46e216.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/lihaoyi/mill-main-api_2.13/0.12.8-1-46e216";
  };

  "com.lihaoyi_mill-main-client-0.12.8-1-46e216" = fetchurl {
    name = "com.lihaoyi_mill-main-client-0.12.8-1-46e216";
    hash = "sha256-YMhZ7tABUyMCFXru2tjJK9IA73Z11n5w/RH5r4ia3q8=";
    url = "https://repo1.maven.org/maven2/com/lihaoyi/mill-main-client/0.12.8-1-46e216/mill-main-client-0.12.8-1-46e216.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/mill-main-client-0.12.8-1-46e216.pom"
            
      downloadedFile=$TMPDIR/mill-main-client-0.12.8-1-46e216.jar
      tryDownload "https://repo1.maven.org/maven2/com/lihaoyi/mill-main-client/0.12.8-1-46e216/mill-main-client-0.12.8-1-46e216.jar"
      cp -v "$TMPDIR/mill-main-client-0.12.8-1-46e216.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/lihaoyi/mill-main-client/0.12.8-1-46e216";
  };

  "com.lihaoyi_mill-moduledefs_2.13-0.11.2" = fetchurl {
    name = "com.lihaoyi_mill-moduledefs_2.13-0.11.2";
    hash = "sha256-aTQtCHGjdmdIWSZgyv6EllswGet1c2gKJ0nuGxu+TpA=";
    url = "https://repo1.maven.org/maven2/com/lihaoyi/mill-moduledefs_2.13/0.11.2/mill-moduledefs_2.13-0.11.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/mill-moduledefs_2.13-0.11.2.pom"
            
      downloadedFile=$TMPDIR/mill-moduledefs_2.13-0.11.2.jar
      tryDownload "https://repo1.maven.org/maven2/com/lihaoyi/mill-moduledefs_2.13/0.11.2/mill-moduledefs_2.13-0.11.2.jar"
      cp -v "$TMPDIR/mill-moduledefs_2.13-0.11.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/lihaoyi/mill-moduledefs_2.13/0.11.2";
  };

  "com.lihaoyi_mill-runner-linenumbers_2.13-0.12.8-1-46e216" = fetchurl {
    name = "com.lihaoyi_mill-runner-linenumbers_2.13-0.12.8-1-46e216";
    hash = "sha256-87nmecp5r+JPxSGxJIQz0wLptyW3yTilDK4CQaQlcsY=";
    url = "https://repo1.maven.org/maven2/com/lihaoyi/mill-runner-linenumbers_2.13/0.12.8-1-46e216/mill-runner-linenumbers_2.13-0.12.8-1-46e216.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/mill-runner-linenumbers_2.13-0.12.8-1-46e216.pom"
            
      downloadedFile=$TMPDIR/mill-runner-linenumbers_2.13-0.12.8-1-46e216.jar
      tryDownload "https://repo1.maven.org/maven2/com/lihaoyi/mill-runner-linenumbers_2.13/0.12.8-1-46e216/mill-runner-linenumbers_2.13-0.12.8-1-46e216.jar"
      cp -v "$TMPDIR/mill-runner-linenumbers_2.13-0.12.8-1-46e216.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/lihaoyi/mill-runner-linenumbers_2.13/0.12.8-1-46e216";
  };

  "com.lihaoyi_mill-scala-compiler-bridge_2.13.15-0.0.1" = fetchurl {
    name = "com.lihaoyi_mill-scala-compiler-bridge_2.13.15-0.0.1";
    hash = "sha256-uTyXjgTJGlaKl8jCUp9A6uDdma97ixL65GNVD9l9oOw=";
    url = "https://repo1.maven.org/maven2/com/lihaoyi/mill-scala-compiler-bridge_2.13.15/0.0.1/mill-scala-compiler-bridge_2.13.15-0.0.1.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/mill-scala-compiler-bridge_2.13.15-0.0.1.pom"
            
      downloadedFile=$TMPDIR/mill-scala-compiler-bridge_2.13.15-0.0.1.jar
      tryDownload "https://repo1.maven.org/maven2/com/lihaoyi/mill-scala-compiler-bridge_2.13.15/0.0.1/mill-scala-compiler-bridge_2.13.15-0.0.1.jar"
      cp -v "$TMPDIR/mill-scala-compiler-bridge_2.13.15-0.0.1.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/lihaoyi/mill-scala-compiler-bridge_2.13.15/0.0.1";
  };

  "com.lihaoyi_mill-scalalib-api_2.13-0.12.8-1-46e216" = fetchurl {
    name = "com.lihaoyi_mill-scalalib-api_2.13-0.12.8-1-46e216";
    hash = "sha256-8xD1JkQ+PyCOCEYO/mlpmkQ1PpqIRjHnlwjI46Q/TNY=";
    url = "https://repo1.maven.org/maven2/com/lihaoyi/mill-scalalib-api_2.13/0.12.8-1-46e216/mill-scalalib-api_2.13-0.12.8-1-46e216.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/mill-scalalib-api_2.13-0.12.8-1-46e216.pom"
            
      downloadedFile=$TMPDIR/mill-scalalib-api_2.13-0.12.8-1-46e216.jar
      tryDownload "https://repo1.maven.org/maven2/com/lihaoyi/mill-scalalib-api_2.13/0.12.8-1-46e216/mill-scalalib-api_2.13-0.12.8-1-46e216.jar"
      cp -v "$TMPDIR/mill-scalalib-api_2.13-0.12.8-1-46e216.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/lihaoyi/mill-scalalib-api_2.13/0.12.8-1-46e216";
  };

  "com.lihaoyi_mill-scalalib-worker_2.13-0.12.8-1-46e216" = fetchurl {
    name = "com.lihaoyi_mill-scalalib-worker_2.13-0.12.8-1-46e216";
    hash = "sha256-SJG7mGWhe+4a2xkmFWQqn/QUBb+RYMpSdB7b1jv7JQw=";
    url = "https://repo1.maven.org/maven2/com/lihaoyi/mill-scalalib-worker_2.13/0.12.8-1-46e216/mill-scalalib-worker_2.13-0.12.8-1-46e216.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/mill-scalalib-worker_2.13-0.12.8-1-46e216.pom"
            
      downloadedFile=$TMPDIR/mill-scalalib-worker_2.13-0.12.8-1-46e216.jar
      tryDownload "https://repo1.maven.org/maven2/com/lihaoyi/mill-scalalib-worker_2.13/0.12.8-1-46e216/mill-scalalib-worker_2.13-0.12.8-1-46e216.jar"
      cp -v "$TMPDIR/mill-scalalib-worker_2.13-0.12.8-1-46e216.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/lihaoyi/mill-scalalib-worker_2.13/0.12.8-1-46e216";
  };

  "com.lihaoyi_os-lib_2.13-0.10.0" = fetchurl {
    name = "com.lihaoyi_os-lib_2.13-0.10.0";
    hash = "sha256-QMLhQLNthyscyl83Zy+UB/mGwa+7JpM0upwj3oxg7Fw=";
    url = "https://repo1.maven.org/maven2/com/lihaoyi/os-lib_2.13/0.10.0/os-lib_2.13-0.10.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/os-lib_2.13-0.10.0.pom"
            
      downloadedFile=$TMPDIR/os-lib_2.13-0.10.0.jar
      tryDownload "https://repo1.maven.org/maven2/com/lihaoyi/os-lib_2.13/0.10.0/os-lib_2.13-0.10.0.jar"
      cp -v "$TMPDIR/os-lib_2.13-0.10.0.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/lihaoyi/os-lib_2.13/0.10.0";
  };

  "com.lihaoyi_os-lib_2.13-0.11.4-M6" = fetchurl {
    name = "com.lihaoyi_os-lib_2.13-0.11.4-M6";
    hash = "sha256-Xfo/y+4tKe7wAUFY1nyyh9is8M0l4sYU4OnheEljEL8=";
    url = "https://repo1.maven.org/maven2/com/lihaoyi/os-lib_2.13/0.11.4-M6/os-lib_2.13-0.11.4-M6.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/os-lib_2.13-0.11.4-M6.pom"
            
      downloadedFile=$TMPDIR/os-lib_2.13-0.11.4-M6.jar
      tryDownload "https://repo1.maven.org/maven2/com/lihaoyi/os-lib_2.13/0.11.4-M6/os-lib_2.13-0.11.4-M6.jar"
      cp -v "$TMPDIR/os-lib_2.13-0.11.4-M6.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/lihaoyi/os-lib_2.13/0.11.4-M6";
  };

  "com.lihaoyi_os-lib_3-0.9.1" = fetchurl {
    name = "com.lihaoyi_os-lib_3-0.9.1";
    hash = "sha256-VUeatMyLUWgVaHLi73VjsAbB1unRk5t3ebUcPEdL3Os=";
    url = "https://repo1.maven.org/maven2/com/lihaoyi/os-lib_3/0.9.1/os-lib_3-0.9.1.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/os-lib_3-0.9.1.pom"
            
      downloadedFile=$TMPDIR/os-lib_3-0.9.1.jar
      tryDownload "https://repo1.maven.org/maven2/com/lihaoyi/os-lib_3/0.9.1/os-lib_3-0.9.1.jar"
      cp -v "$TMPDIR/os-lib_3-0.9.1.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/lihaoyi/os-lib_3/0.9.1";
  };

  "com.lihaoyi_pprint_2.13-0.9.0" = fetchurl {
    name = "com.lihaoyi_pprint_2.13-0.9.0";
    hash = "sha256-RUmk2jO7irTaoMYgRK6Ui/SeyLEFCAspCehIccoQoeE=";
    url = "https://repo1.maven.org/maven2/com/lihaoyi/pprint_2.13/0.9.0/pprint_2.13-0.9.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/pprint_2.13-0.9.0.pom"
            
      downloadedFile=$TMPDIR/pprint_2.13-0.9.0.jar
      tryDownload "https://repo1.maven.org/maven2/com/lihaoyi/pprint_2.13/0.9.0/pprint_2.13-0.9.0.jar"
      cp -v "$TMPDIR/pprint_2.13-0.9.0.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/lihaoyi/pprint_2.13/0.9.0";
  };

  "com.lihaoyi_pprint_3-0.9.0" = fetchurl {
    name = "com.lihaoyi_pprint_3-0.9.0";
    hash = "sha256-G9+cXrjL/+aawfpe5/xSRzxGiyYWUGKyE1G2sPKHwOk=";
    url = "https://repo1.maven.org/maven2/com/lihaoyi/pprint_3/0.9.0/pprint_3-0.9.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/pprint_3-0.9.0.pom"
            
      downloadedFile=$TMPDIR/pprint_3-0.9.0.jar
      tryDownload "https://repo1.maven.org/maven2/com/lihaoyi/pprint_3/0.9.0/pprint_3-0.9.0.jar"
      cp -v "$TMPDIR/pprint_3-0.9.0.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/lihaoyi/pprint_3/0.9.0";
  };

  "com.lihaoyi_scalac-mill-moduledefs-plugin_2.13.15-0.11.2" = fetchurl {
    name = "com.lihaoyi_scalac-mill-moduledefs-plugin_2.13.15-0.11.2";
    hash = "sha256-l+0NBdEWKEMILT44bK6ohiaon09cQvORWtDrCjUkn0A=";
    url = "https://repo1.maven.org/maven2/com/lihaoyi/scalac-mill-moduledefs-plugin_2.13.15/0.11.2/scalac-mill-moduledefs-plugin_2.13.15-0.11.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/scalac-mill-moduledefs-plugin_2.13.15-0.11.2.pom"
            
      downloadedFile=$TMPDIR/scalac-mill-moduledefs-plugin_2.13.15-0.11.2.jar
      tryDownload "https://repo1.maven.org/maven2/com/lihaoyi/scalac-mill-moduledefs-plugin_2.13.15/0.11.2/scalac-mill-moduledefs-plugin_2.13.15-0.11.2.jar"
      cp -v "$TMPDIR/scalac-mill-moduledefs-plugin_2.13.15-0.11.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/lihaoyi/scalac-mill-moduledefs-plugin_2.13.15/0.11.2";
  };

  "com.lihaoyi_sourcecode_2.13-0.3.0" = fetchurl {
    name = "com.lihaoyi_sourcecode_2.13-0.3.0";
    hash = "sha256-Y+QhWVO6t2oYpWS/s2aG1fHO+QZ726LyJYaGh3SL4ko=";
    url = "https://repo1.maven.org/maven2/com/lihaoyi/sourcecode_2.13/0.3.0/sourcecode_2.13-0.3.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/sourcecode_2.13-0.3.0.pom"
            
      downloadedFile=$TMPDIR/sourcecode_2.13-0.3.0.jar
      tryDownload "https://repo1.maven.org/maven2/com/lihaoyi/sourcecode_2.13/0.3.0/sourcecode_2.13-0.3.0.jar"
      cp -v "$TMPDIR/sourcecode_2.13-0.3.0.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/lihaoyi/sourcecode_2.13/0.3.0";
  };

  "com.lihaoyi_sourcecode_2.13-0.4.0" = fetchurl {
    name = "com.lihaoyi_sourcecode_2.13-0.4.0";
    hash = "sha256-pi/E3F43hJcUYTx3hqUfOa/SGWmIcCl7z+3vCWDDrXc=";
    url = "https://repo1.maven.org/maven2/com/lihaoyi/sourcecode_2.13/0.4.0/sourcecode_2.13-0.4.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/sourcecode_2.13-0.4.0.pom"
            
      downloadedFile=$TMPDIR/sourcecode_2.13-0.4.0.jar
      tryDownload "https://repo1.maven.org/maven2/com/lihaoyi/sourcecode_2.13/0.4.0/sourcecode_2.13-0.4.0.jar"
      cp -v "$TMPDIR/sourcecode_2.13-0.4.0.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/lihaoyi/sourcecode_2.13/0.4.0";
  };

  "com.lihaoyi_sourcecode_3-0.4.0" = fetchurl {
    name = "com.lihaoyi_sourcecode_3-0.4.0";
    hash = "sha256-uuL36U8SXTZ1e0obeznF/zJXAspEWrmdYzOTgfrhMto=";
    url = "https://repo1.maven.org/maven2/com/lihaoyi/sourcecode_3/0.4.0/sourcecode_3-0.4.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/sourcecode_3-0.4.0.pom"
            
      downloadedFile=$TMPDIR/sourcecode_3-0.4.0.jar
      tryDownload "https://repo1.maven.org/maven2/com/lihaoyi/sourcecode_3/0.4.0/sourcecode_3-0.4.0.jar"
      cp -v "$TMPDIR/sourcecode_3-0.4.0.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/lihaoyi/sourcecode_3/0.4.0";
  };

  "com.lihaoyi_ujson_2.13-3.3.1" = fetchurl {
    name = "com.lihaoyi_ujson_2.13-3.3.1";
    hash = "sha256-tS5BVFeMdRfzGHUlrAywtQb4mG6oel56ooMEtlsWGjI=";
    url = "https://repo1.maven.org/maven2/com/lihaoyi/ujson_2.13/3.3.1/ujson_2.13-3.3.1.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/ujson_2.13-3.3.1.pom"
            
      downloadedFile=$TMPDIR/ujson_2.13-3.3.1.jar
      tryDownload "https://repo1.maven.org/maven2/com/lihaoyi/ujson_2.13/3.3.1/ujson_2.13-3.3.1.jar"
      cp -v "$TMPDIR/ujson_2.13-3.3.1.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/lihaoyi/ujson_2.13/3.3.1";
  };

  "com.lihaoyi_ujson_3-4.0.2" = fetchurl {
    name = "com.lihaoyi_ujson_3-4.0.2";
    hash = "sha256-sh595bxDgPH+K/tgqyzxgMrwafXDlYep4ScqZ5dcwI8=";
    url = "https://repo1.maven.org/maven2/com/lihaoyi/ujson_3/4.0.2/ujson_3-4.0.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/ujson_3-4.0.2.pom"
            
      downloadedFile=$TMPDIR/ujson_3-4.0.2.jar
      tryDownload "https://repo1.maven.org/maven2/com/lihaoyi/ujson_3/4.0.2/ujson_3-4.0.2.jar"
      cp -v "$TMPDIR/ujson_3-4.0.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/lihaoyi/ujson_3/4.0.2";
  };

  "com.lihaoyi_upack_2.13-3.3.1" = fetchurl {
    name = "com.lihaoyi_upack_2.13-3.3.1";
    hash = "sha256-rbWiMl6+OXfWP2HjpMbvkToBzWhuW2hsJD/4dd+XmOs=";
    url = "https://repo1.maven.org/maven2/com/lihaoyi/upack_2.13/3.3.1/upack_2.13-3.3.1.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/upack_2.13-3.3.1.pom"
            
      downloadedFile=$TMPDIR/upack_2.13-3.3.1.jar
      tryDownload "https://repo1.maven.org/maven2/com/lihaoyi/upack_2.13/3.3.1/upack_2.13-3.3.1.jar"
      cp -v "$TMPDIR/upack_2.13-3.3.1.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/lihaoyi/upack_2.13/3.3.1";
  };

  "com.lihaoyi_upack_3-4.0.2" = fetchurl {
    name = "com.lihaoyi_upack_3-4.0.2";
    hash = "sha256-uf+67kBS2CsvzzSUbGO3qH0KZgQpqgvATYSdL2oXlz8=";
    url = "https://repo1.maven.org/maven2/com/lihaoyi/upack_3/4.0.2/upack_3-4.0.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/upack_3-4.0.2.pom"
            
      downloadedFile=$TMPDIR/upack_3-4.0.2.jar
      tryDownload "https://repo1.maven.org/maven2/com/lihaoyi/upack_3/4.0.2/upack_3-4.0.2.jar"
      cp -v "$TMPDIR/upack_3-4.0.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/lihaoyi/upack_3/4.0.2";
  };

  "com.lihaoyi_upickle-core_2.13-3.3.1" = fetchurl {
    name = "com.lihaoyi_upickle-core_2.13-3.3.1";
    hash = "sha256-+vXjTD3FY+FMlDpvsOkhwycDbvhnIY0SOcHKOYc+StM=";
    url = "https://repo1.maven.org/maven2/com/lihaoyi/upickle-core_2.13/3.3.1/upickle-core_2.13-3.3.1.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/upickle-core_2.13-3.3.1.pom"
            
      downloadedFile=$TMPDIR/upickle-core_2.13-3.3.1.jar
      tryDownload "https://repo1.maven.org/maven2/com/lihaoyi/upickle-core_2.13/3.3.1/upickle-core_2.13-3.3.1.jar"
      cp -v "$TMPDIR/upickle-core_2.13-3.3.1.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/lihaoyi/upickle-core_2.13/3.3.1";
  };

  "com.lihaoyi_upickle-core_3-4.0.2" = fetchurl {
    name = "com.lihaoyi_upickle-core_3-4.0.2";
    hash = "sha256-y+2kYNhenuu+ILt2x58+BXzpPEezMKi7hx8w+9s0a70=";
    url = "https://repo1.maven.org/maven2/com/lihaoyi/upickle-core_3/4.0.2/upickle-core_3-4.0.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/upickle-core_3-4.0.2.pom"
            
      downloadedFile=$TMPDIR/upickle-core_3-4.0.2.jar
      tryDownload "https://repo1.maven.org/maven2/com/lihaoyi/upickle-core_3/4.0.2/upickle-core_3-4.0.2.jar"
      cp -v "$TMPDIR/upickle-core_3-4.0.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/lihaoyi/upickle-core_3/4.0.2";
  };

  "com.lihaoyi_upickle-implicits_2.13-3.3.1" = fetchurl {
    name = "com.lihaoyi_upickle-implicits_2.13-3.3.1";
    hash = "sha256-LKWPAok7DL+YyfLv6yTwuyAG8z/74mzMrsqgUvUw9bM=";
    url = "https://repo1.maven.org/maven2/com/lihaoyi/upickle-implicits_2.13/3.3.1/upickle-implicits_2.13-3.3.1.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/upickle-implicits_2.13-3.3.1.pom"
            
      downloadedFile=$TMPDIR/upickle-implicits_2.13-3.3.1.jar
      tryDownload "https://repo1.maven.org/maven2/com/lihaoyi/upickle-implicits_2.13/3.3.1/upickle-implicits_2.13-3.3.1.jar"
      cp -v "$TMPDIR/upickle-implicits_2.13-3.3.1.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/lihaoyi/upickle-implicits_2.13/3.3.1";
  };

  "com.lihaoyi_upickle-implicits_3-4.0.2" = fetchurl {
    name = "com.lihaoyi_upickle-implicits_3-4.0.2";
    hash = "sha256-spEOo3MUeUwRKHSk7Oc5n6RIseeDKhPKp/fe8NKQ1Mc=";
    url = "https://repo1.maven.org/maven2/com/lihaoyi/upickle-implicits_3/4.0.2/upickle-implicits_3-4.0.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/upickle-implicits_3-4.0.2.pom"
            
      downloadedFile=$TMPDIR/upickle-implicits_3-4.0.2.jar
      tryDownload "https://repo1.maven.org/maven2/com/lihaoyi/upickle-implicits_3/4.0.2/upickle-implicits_3-4.0.2.jar"
      cp -v "$TMPDIR/upickle-implicits_3-4.0.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/lihaoyi/upickle-implicits_3/4.0.2";
  };

  "com.lihaoyi_upickle_2.13-3.3.1" = fetchurl {
    name = "com.lihaoyi_upickle_2.13-3.3.1";
    hash = "sha256-1vHU3mGQey3zvyUHK9uCx+9pUnpnWe3zEMlyb8QqUFc=";
    url = "https://repo1.maven.org/maven2/com/lihaoyi/upickle_2.13/3.3.1/upickle_2.13-3.3.1.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/upickle_2.13-3.3.1.pom"
            
      downloadedFile=$TMPDIR/upickle_2.13-3.3.1.jar
      tryDownload "https://repo1.maven.org/maven2/com/lihaoyi/upickle_2.13/3.3.1/upickle_2.13-3.3.1.jar"
      cp -v "$TMPDIR/upickle_2.13-3.3.1.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/lihaoyi/upickle_2.13/3.3.1";
  };

  "com.lihaoyi_upickle_3-4.0.2" = fetchurl {
    name = "com.lihaoyi_upickle_3-4.0.2";
    hash = "sha256-9lijD0jcIIu+/InNWvfbdxF/DgmoB8ksVb7bl6BM1iU=";
    url = "https://repo1.maven.org/maven2/com/lihaoyi/upickle_3/4.0.2/upickle_3-4.0.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/upickle_3-4.0.2.pom"
            
      downloadedFile=$TMPDIR/upickle_3-4.0.2.jar
      tryDownload "https://repo1.maven.org/maven2/com/lihaoyi/upickle_3/4.0.2/upickle_3-4.0.2.jar"
      cp -v "$TMPDIR/upickle_3-4.0.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/lihaoyi/upickle_3/4.0.2";
  };

  "com.lmax_disruptor-3.4.2" = fetchurl {
    name = "com.lmax_disruptor-3.4.2";
    hash = "sha256-nbZsn6zL8HaJOrkMiWwvCuHQumcNQYA8e6QrAjXKKKg=";
    url = "https://repo1.maven.org/maven2/com/lmax/disruptor/3.4.2/disruptor-3.4.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/disruptor-3.4.2.pom"
            
      downloadedFile=$TMPDIR/disruptor-3.4.2.jar
      tryDownload "https://repo1.maven.org/maven2/com/lmax/disruptor/3.4.2/disruptor-3.4.2.jar"
      cp -v "$TMPDIR/disruptor-3.4.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/lmax/disruptor/3.4.2";
  };

  "com.swoval_file-tree-views-2.1.12" = fetchurl {
    name = "com.swoval_file-tree-views-2.1.12";
    hash = "sha256-QhJJFQt5LS2THa8AyPLrj0suht4eCiAEl2sf7QsZU3I=";
    url = "https://repo1.maven.org/maven2/com/swoval/file-tree-views/2.1.12/file-tree-views-2.1.12.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/file-tree-views-2.1.12.pom"
            
      downloadedFile=$TMPDIR/file-tree-views-2.1.12.jar
      tryDownload "https://repo1.maven.org/maven2/com/swoval/file-tree-views/2.1.12/file-tree-views-2.1.12.jar"
      cp -v "$TMPDIR/file-tree-views-2.1.12.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/swoval/file-tree-views/2.1.12";
  };

  "jakarta.platform_jakarta.jakartaee-bom-9.1.0" = fetchurl {
    name = "jakarta.platform_jakarta.jakartaee-bom-9.1.0";
    hash = "sha256-kstGe15Yw9oF6LQ3Vovx1PcCUfQtNaEM7T8E5Upp1gg=";
    url = "https://repo1.maven.org/maven2/jakarta/platform/jakarta.jakartaee-bom/9.1.0/jakarta.jakartaee-bom-9.1.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/jakarta.jakartaee-bom-9.1.0.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/jakarta/platform/jakarta.jakartaee-bom/9.1.0";
  };

  "jakarta.platform_jakartaee-api-parent-9.1.0" = fetchurl {
    name = "jakarta.platform_jakartaee-api-parent-9.1.0";
    hash = "sha256-FrD7N30UkkRSQtD3+FPOC1fH2qrNnJw6UZQ/hNFXWrA=";
    url = "https://repo1.maven.org/maven2/jakarta/platform/jakartaee-api-parent/9.1.0/jakartaee-api-parent-9.1.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/jakartaee-api-parent-9.1.0.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/jakarta/platform/jakartaee-api-parent/9.1.0";
  };

  "net.openhft_java-parent-pom-1.1.28" = fetchurl {
    name = "net.openhft_java-parent-pom-1.1.28";
    hash = "sha256-d7bOKP/hHJElmDQtIbblYDHRc8LCpqkt5Zl8aHp7l88=";
    url = "https://repo1.maven.org/maven2/net/openhft/java-parent-pom/1.1.28/java-parent-pom-1.1.28.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/java-parent-pom-1.1.28.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/net/openhft/java-parent-pom/1.1.28";
  };

  "net.openhft_root-parent-pom-1.2.12" = fetchurl {
    name = "net.openhft_root-parent-pom-1.2.12";
    hash = "sha256-D/M1qN+njmMZWqS5h27fl83Q+zWgIFjaYQkCpD2Oy/M=";
    url = "https://repo1.maven.org/maven2/net/openhft/root-parent-pom/1.2.12/root-parent-pom-1.2.12.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/root-parent-pom-1.2.12.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/net/openhft/root-parent-pom/1.2.12";
  };

  "net.openhft_zero-allocation-hashing-0.16" = fetchurl {
    name = "net.openhft_zero-allocation-hashing-0.16";
    hash = "sha256-QkNOGkyP/OFWM+pv40hqR+ii4GBAcv0bbIrpG66YDMo=";
    url = "https://repo1.maven.org/maven2/net/openhft/zero-allocation-hashing/0.16/zero-allocation-hashing-0.16.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/zero-allocation-hashing-0.16.pom"
            
      downloadedFile=$TMPDIR/zero-allocation-hashing-0.16.jar
      tryDownload "https://repo1.maven.org/maven2/net/openhft/zero-allocation-hashing/0.16/zero-allocation-hashing-0.16.jar"
      cp -v "$TMPDIR/zero-allocation-hashing-0.16.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/net/openhft/zero-allocation-hashing/0.16";
  };

  "nl.big-o_liqp-0.8.2" = fetchurl {
    name = "nl.big-o_liqp-0.8.2";
    hash = "sha256-yamgRk2t6//LGTLwLSNJ28rGL0mQFOU1XCThtpWwmMM=";
    url = "https://repo1.maven.org/maven2/nl/big-o/liqp/0.8.2/liqp-0.8.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/liqp-0.8.2.pom"
            
      downloadedFile=$TMPDIR/liqp-0.8.2.jar
      tryDownload "https://repo1.maven.org/maven2/nl/big-o/liqp/0.8.2/liqp-0.8.2.jar"
      cp -v "$TMPDIR/liqp-0.8.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/nl/big-o/liqp/0.8.2";
  };

  "org.antlr_antlr4-master-4.7.2" = fetchurl {
    name = "org.antlr_antlr4-master-4.7.2";
    hash = "sha256-Z+4f52KXe+J8mvu6l3IryRrYdsxjwj4Cztrn0OEs2dM=";
    url = "https://repo1.maven.org/maven2/org/antlr/antlr4-master/4.7.2/antlr4-master-4.7.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/antlr4-master-4.7.2.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/antlr/antlr4-master/4.7.2";
  };

  "org.antlr_antlr4-runtime-4.7.2" = fetchurl {
    name = "org.antlr_antlr4-runtime-4.7.2";
    hash = "sha256-orSo+dX/By8iQ7guGqi/mScUKmFeAp2TizPRFWLVUvY=";
    url = "https://repo1.maven.org/maven2/org/antlr/antlr4-runtime/4.7.2/antlr4-runtime-4.7.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/antlr4-runtime-4.7.2.pom"
            
      downloadedFile=$TMPDIR/antlr4-runtime-4.7.2.jar
      tryDownload "https://repo1.maven.org/maven2/org/antlr/antlr4-runtime/4.7.2/antlr4-runtime-4.7.2.jar"
      cp -v "$TMPDIR/antlr4-runtime-4.7.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/antlr/antlr4-runtime/4.7.2";
  };

  "org.apache_apache-33" = fetchurl {
    name = "org.apache_apache-33";
    hash = "sha256-Hwj0S/ETiRxq9ObIzy9OGjGShFgbWuJOEoV6skSMQzI=";
    url = "https://repo1.maven.org/maven2/org/apache/apache/33/apache-33.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/apache-33.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/apache/apache/33";
  };

  "org.chipsalliance_firtool-resolver_2.13-2.0.1" = fetchurl {
    name = "org.chipsalliance_firtool-resolver_2.13-2.0.1";
    hash = "sha256-CGJ1TtugVYKbdzR1NWZunPLyxQRgKZPGQPWhTOGOeHI=";
    url = "https://repo1.maven.org/maven2/org/chipsalliance/firtool-resolver_2.13/2.0.1/firtool-resolver_2.13-2.0.1.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/firtool-resolver_2.13-2.0.1.pom"
            
      downloadedFile=$TMPDIR/firtool-resolver_2.13-2.0.1.jar
      tryDownload "https://repo1.maven.org/maven2/org/chipsalliance/firtool-resolver_2.13/2.0.1/firtool-resolver_2.13-2.0.1.jar"
      cp -v "$TMPDIR/firtool-resolver_2.13-2.0.1.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/chipsalliance/firtool-resolver_2.13/2.0.1";
  };

  "org.fusesource_fusesource-pom-1.12" = fetchurl {
    name = "org.fusesource_fusesource-pom-1.12";
    hash = "sha256-NUD5PZ1FYYOq8yumvT5i29Vxd2ZCI6PXImXfLe4mE30=";
    url = "https://repo1.maven.org/maven2/org/fusesource/fusesource-pom/1.12/fusesource-pom-1.12.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/fusesource-pom-1.12.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/fusesource/fusesource-pom/1.12";
  };

  "org.jetbrains_annotations-15.0" = fetchurl {
    name = "org.jetbrains_annotations-15.0";
    hash = "sha256-zKx9CDgM9iLkt5SFNiSgDzJu9AxFNPjCFWwMi9copnI=";
    url = "https://repo1.maven.org/maven2/org/jetbrains/annotations/15.0/annotations-15.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/annotations-15.0.pom"
            
      downloadedFile=$TMPDIR/annotations-15.0.jar
      tryDownload "https://repo1.maven.org/maven2/org/jetbrains/annotations/15.0/annotations-15.0.jar"
      cp -v "$TMPDIR/annotations-15.0.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/jetbrains/annotations/15.0";
  };

  "org.jline_jline-3.26.3" = fetchurl {
    name = "org.jline_jline-3.26.3";
    hash = "sha256-CVg5HR6GRYVCZ+0Y3yMsCUlgFCzd7MhgMqaZIQZEus0=";
    url = "https://repo1.maven.org/maven2/org/jline/jline/3.26.3/jline-3.26.3.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/jline-3.26.3.pom"
            
      downloadedFile=$TMPDIR/jline-3.26.3.jar
      tryDownload "https://repo1.maven.org/maven2/org/jline/jline/3.26.3/jline-3.26.3.jar"
      cp -v "$TMPDIR/jline-3.26.3.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/jline/jline/3.26.3";
  };

  "org.jline_jline-3.27.1" = fetchurl {
    name = "org.jline_jline-3.27.1";
    hash = "sha256-GnI5uLuXJN7AvsltUpzwzGNuFYkfSQ4mxy4XLOODsmU=";
    url = "https://repo1.maven.org/maven2/org/jline/jline/3.27.1/jline-3.27.1.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/jline-3.27.1.pom"
            
      downloadedFile=$TMPDIR/jline-3.27.1-jdk8.jar
      tryDownload "https://repo1.maven.org/maven2/org/jline/jline/3.27.1/jline-3.27.1-jdk8.jar"
      cp -v "$TMPDIR/jline-3.27.1-jdk8.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/jline/jline/3.27.1";
  };

  "org.jline_jline-native-3.27.0" = fetchurl {
    name = "org.jline_jline-native-3.27.0";
    hash = "sha256-O/J+a5uNpfdl2iYqzl0POxqp0CtLNjdWJw9LaxV82GY=";
    url = "https://repo1.maven.org/maven2/org/jline/jline-native/3.27.0/jline-native-3.27.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/jline-native-3.27.0.pom"
            
      downloadedFile=$TMPDIR/jline-native-3.27.0.jar
      tryDownload "https://repo1.maven.org/maven2/org/jline/jline-native/3.27.0/jline-native-3.27.0.jar"
      cp -v "$TMPDIR/jline-native-3.27.0.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/jline/jline-native/3.27.0";
  };

  "org.jline_jline-native-3.27.1" = fetchurl {
    name = "org.jline_jline-native-3.27.1";
    hash = "sha256-XyhCZMcwu/OXdQ8BTM+qGgjGzMano5DJoghn1+/yr+Q=";
    url = "https://repo1.maven.org/maven2/org/jline/jline-native/3.27.1/jline-native-3.27.1.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/jline-native-3.27.1.pom"
            
      downloadedFile=$TMPDIR/jline-native-3.27.1.jar
      tryDownload "https://repo1.maven.org/maven2/org/jline/jline-native/3.27.1/jline-native-3.27.1.jar"
      cp -v "$TMPDIR/jline-native-3.27.1.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/jline/jline-native/3.27.1";
  };

  "org.jline_jline-parent-3.27.0" = fetchurl {
    name = "org.jline_jline-parent-3.27.0";
    hash = "sha256-Oh7mRotS8yhoU5Nxigu+kfgUDILIgwtkQXCkvE1JesQ=";
    url = "https://repo1.maven.org/maven2/org/jline/jline-parent/3.27.0/jline-parent-3.27.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/jline-parent-3.27.0.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/jline/jline-parent/3.27.0";
  };

  "org.jline_jline-parent-3.27.1" = fetchurl {
    name = "org.jline_jline-parent-3.27.1";
    hash = "sha256-Oa5DgBvf5JwZH68PDIyNkEQtm7IL04ujoeniH6GZas8=";
    url = "https://repo1.maven.org/maven2/org/jline/jline-parent/3.27.1/jline-parent-3.27.1.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/jline-parent-3.27.1.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/jline/jline-parent/3.27.1";
  };

  "org.jline_jline-reader-3.27.0" = fetchurl {
    name = "org.jline_jline-reader-3.27.0";
    hash = "sha256-f/b+aWF/tmHedVWseL7hDjA4vJUrllPGnNhZH81S3Qg=";
    url = "https://repo1.maven.org/maven2/org/jline/jline-reader/3.27.0/jline-reader-3.27.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/jline-reader-3.27.0.pom"
            
      downloadedFile=$TMPDIR/jline-reader-3.27.0.jar
      tryDownload "https://repo1.maven.org/maven2/org/jline/jline-reader/3.27.0/jline-reader-3.27.0.jar"
      cp -v "$TMPDIR/jline-reader-3.27.0.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/jline/jline-reader/3.27.0";
  };

  "org.jline_jline-terminal-3.27.0" = fetchurl {
    name = "org.jline_jline-terminal-3.27.0";
    hash = "sha256-hkKgeb/Kl1hlTC9TMNkujoBwY+QS4e6ESUK9kdEbcGE=";
    url = "https://repo1.maven.org/maven2/org/jline/jline-terminal/3.27.0/jline-terminal-3.27.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/jline-terminal-3.27.0.pom"
            
      downloadedFile=$TMPDIR/jline-terminal-3.27.0.jar
      tryDownload "https://repo1.maven.org/maven2/org/jline/jline-terminal/3.27.0/jline-terminal-3.27.0.jar"
      cp -v "$TMPDIR/jline-terminal-3.27.0.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/jline/jline-terminal/3.27.0";
  };

  "org.jline_jline-terminal-3.27.1" = fetchurl {
    name = "org.jline_jline-terminal-3.27.1";
    hash = "sha256-WV77BAEncauTljUBrlYi9v3GxDDeskqQpHHD9Fdbqjw=";
    url = "https://repo1.maven.org/maven2/org/jline/jline-terminal/3.27.1/jline-terminal-3.27.1.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/jline-terminal-3.27.1.pom"
            
      downloadedFile=$TMPDIR/jline-terminal-3.27.1.jar
      tryDownload "https://repo1.maven.org/maven2/org/jline/jline-terminal/3.27.1/jline-terminal-3.27.1.jar"
      cp -v "$TMPDIR/jline-terminal-3.27.1.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/jline/jline-terminal/3.27.1";
  };

  "org.jline_jline-terminal-jna-3.27.0" = fetchurl {
    name = "org.jline_jline-terminal-jna-3.27.0";
    hash = "sha256-Pw8jJMTTBpAKxfU9gp2EN2CfVHpRpC0YJorCu/9UDsI=";
    url = "https://repo1.maven.org/maven2/org/jline/jline-terminal-jna/3.27.0/jline-terminal-jna-3.27.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/jline-terminal-jna-3.27.0.pom"
            
      downloadedFile=$TMPDIR/jline-terminal-jna-3.27.0.jar
      tryDownload "https://repo1.maven.org/maven2/org/jline/jline-terminal-jna/3.27.0/jline-terminal-jna-3.27.0.jar"
      cp -v "$TMPDIR/jline-terminal-jna-3.27.0.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/jline/jline-terminal-jna/3.27.0";
  };

  "org.jline_jline-terminal-jni-3.27.1" = fetchurl {
    name = "org.jline_jline-terminal-jni-3.27.1";
    hash = "sha256-AWKC7imb/rnF39PAo3bVIW430zPkyj9WozKGkPlTTBE=";
    url = "https://repo1.maven.org/maven2/org/jline/jline-terminal-jni/3.27.1/jline-terminal-jni-3.27.1.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/jline-terminal-jni-3.27.1.pom"
            
      downloadedFile=$TMPDIR/jline-terminal-jni-3.27.1.jar
      tryDownload "https://repo1.maven.org/maven2/org/jline/jline-terminal-jni/3.27.1/jline-terminal-jni-3.27.1.jar"
      cp -v "$TMPDIR/jline-terminal-jni-3.27.1.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/jline/jline-terminal-jni/3.27.1";
  };

  "org.json4s_json4s-ast_2.13-4.0.7" = fetchurl {
    name = "org.json4s_json4s-ast_2.13-4.0.7";
    hash = "sha256-krtrf0SfBd8Jn0JaAL0ocE/QOc3yt4HomZOCzaA3Zn8=";
    url = "https://repo1.maven.org/maven2/org/json4s/json4s-ast_2.13/4.0.7/json4s-ast_2.13-4.0.7.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/json4s-ast_2.13-4.0.7.pom"
            
      downloadedFile=$TMPDIR/json4s-ast_2.13-4.0.7.jar
      tryDownload "https://repo1.maven.org/maven2/org/json4s/json4s-ast_2.13/4.0.7/json4s-ast_2.13-4.0.7.jar"
      cp -v "$TMPDIR/json4s-ast_2.13-4.0.7.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/json4s/json4s-ast_2.13/4.0.7";
  };

  "org.json4s_json4s-core_2.13-4.0.7" = fetchurl {
    name = "org.json4s_json4s-core_2.13-4.0.7";
    hash = "sha256-Uk2Ars+BB+5lr+8ec0RtwtRsqfsVf1TyW2Z6YhK56Kw=";
    url = "https://repo1.maven.org/maven2/org/json4s/json4s-core_2.13/4.0.7/json4s-core_2.13-4.0.7.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/json4s-core_2.13-4.0.7.pom"
            
      downloadedFile=$TMPDIR/json4s-core_2.13-4.0.7.jar
      tryDownload "https://repo1.maven.org/maven2/org/json4s/json4s-core_2.13/4.0.7/json4s-core_2.13-4.0.7.jar"
      cp -v "$TMPDIR/json4s-core_2.13-4.0.7.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/json4s/json4s-core_2.13/4.0.7";
  };

  "org.json4s_json4s-native-core_2.13-4.0.7" = fetchurl {
    name = "org.json4s_json4s-native-core_2.13-4.0.7";
    hash = "sha256-pHs9ANRm8I8p24Lq+aAufLHoCOF823qACydlsAPkpYk=";
    url = "https://repo1.maven.org/maven2/org/json4s/json4s-native-core_2.13/4.0.7/json4s-native-core_2.13-4.0.7.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/json4s-native-core_2.13-4.0.7.pom"
            
      downloadedFile=$TMPDIR/json4s-native-core_2.13-4.0.7.jar
      tryDownload "https://repo1.maven.org/maven2/org/json4s/json4s-native-core_2.13/4.0.7/json4s-native-core_2.13-4.0.7.jar"
      cp -v "$TMPDIR/json4s-native-core_2.13-4.0.7.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/json4s/json4s-native-core_2.13/4.0.7";
  };

  "org.json4s_json4s-native_2.13-4.0.7" = fetchurl {
    name = "org.json4s_json4s-native_2.13-4.0.7";
    hash = "sha256-2CB0UN+Az/tda5vKKr8BvTZC+fehONFmB1V3liEcjpg=";
    url = "https://repo1.maven.org/maven2/org/json4s/json4s-native_2.13/4.0.7/json4s-native_2.13-4.0.7.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/json4s-native_2.13-4.0.7.pom"
            
      downloadedFile=$TMPDIR/json4s-native_2.13-4.0.7.jar
      tryDownload "https://repo1.maven.org/maven2/org/json4s/json4s-native_2.13/4.0.7/json4s-native_2.13-4.0.7.jar"
      cp -v "$TMPDIR/json4s-native_2.13-4.0.7.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/json4s/json4s-native_2.13/4.0.7";
  };

  "org.json4s_json4s-scalap_2.13-4.0.7" = fetchurl {
    name = "org.json4s_json4s-scalap_2.13-4.0.7";
    hash = "sha256-lw8n76iJsJlcZ7yhphvKbccinZAg+XeEN/fPjh5G6ak=";
    url = "https://repo1.maven.org/maven2/org/json4s/json4s-scalap_2.13/4.0.7/json4s-scalap_2.13-4.0.7.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/json4s-scalap_2.13-4.0.7.pom"
            
      downloadedFile=$TMPDIR/json4s-scalap_2.13-4.0.7.jar
      tryDownload "https://repo1.maven.org/maven2/org/json4s/json4s-scalap_2.13/4.0.7/json4s-scalap_2.13-4.0.7.jar"
      cp -v "$TMPDIR/json4s-scalap_2.13-4.0.7.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/json4s/json4s-scalap_2.13/4.0.7";
  };

  "org.jsoup_jsoup-1.17.2" = fetchurl {
    name = "org.jsoup_jsoup-1.17.2";
    hash = "sha256-aex/2xWBJBV0CVGOIoNvOcnYi6sVTd3CwBJhM5ZUISU=";
    url = "https://repo1.maven.org/maven2/org/jsoup/jsoup/1.17.2/jsoup-1.17.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/jsoup-1.17.2.pom"
            
      downloadedFile=$TMPDIR/jsoup-1.17.2.jar
      tryDownload "https://repo1.maven.org/maven2/org/jsoup/jsoup/1.17.2/jsoup-1.17.2.jar"
      cp -v "$TMPDIR/jsoup-1.17.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/jsoup/jsoup/1.17.2";
  };

  "org.junit_junit-bom-5.10.3" = fetchurl {
    name = "org.junit_junit-bom-5.10.3";
    hash = "sha256-V+Pp8ndKoaD1fkc4oK9oU0+rrJ5hFRyuVcUnD0LI2Fw=";
    url = "https://repo1.maven.org/maven2/org/junit/junit-bom/5.10.3/junit-bom-5.10.3.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/junit-bom-5.10.3.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/junit/junit-bom/5.10.3";
  };

  "org.junit_junit-bom-5.11.0" = fetchurl {
    name = "org.junit_junit-bom-5.11.0";
    hash = "sha256-8Gnv8IxzEhI2ssVV5CpjvPEv7CDcoexu3wmHBi9ktkA=";
    url = "https://repo1.maven.org/maven2/org/junit/junit-bom/5.11.0/junit-bom-5.11.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/junit-bom-5.11.0.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/junit/junit-bom/5.11.0";
  };

  "org.junit_junit-bom-5.11.2" = fetchurl {
    name = "org.junit_junit-bom-5.11.2";
    hash = "sha256-cGHayaCE9Q75/hyJE3iFhnmKFYtzLY/MLSHDid0QSHY=";
    url = "https://repo1.maven.org/maven2/org/junit/junit-bom/5.11.2/junit-bom-5.11.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/junit-bom-5.11.2.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/junit/junit-bom/5.11.2";
  };

  "org.junit_junit-bom-5.9.2" = fetchurl {
    name = "org.junit_junit-bom-5.9.2";
    hash = "sha256-uGn68+1/ScKIRXjMgUllMofOsjFTxO1mfwrpSVBpP6E=";
    url = "https://repo1.maven.org/maven2/org/junit/junit-bom/5.9.2/junit-bom-5.9.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/junit-bom-5.9.2.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/junit/junit-bom/5.9.2";
  };

  "org.mockito_mockito-bom-4.11.0" = fetchurl {
    name = "org.mockito_mockito-bom-4.11.0";
    hash = "sha256-jtuaGRrHXNkevtfBAzk3OA+n5RNtrDQ0MQSqSRxUIfc=";
    url = "https://repo1.maven.org/maven2/org/mockito/mockito-bom/4.11.0/mockito-bom-4.11.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/mockito-bom-4.11.0.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/mockito/mockito-bom/4.11.0";
  };

  "org.scala-lang_scala-compiler-2.13.15" = fetchurl {
    name = "org.scala-lang_scala-compiler-2.13.15";
    hash = "sha256-kvqWoFLNy3LGIbD6l67f66OyJq/K2L4rTStLiDzIzm8=";
    url = "https://repo1.maven.org/maven2/org/scala-lang/scala-compiler/2.13.15/scala-compiler-2.13.15.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/scala-compiler-2.13.15.pom"
            
      downloadedFile=$TMPDIR/scala-compiler-2.13.15.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-lang/scala-compiler/2.13.15/scala-compiler-2.13.15.jar"
      cp -v "$TMPDIR/scala-compiler-2.13.15.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-lang/scala-compiler/2.13.15";
  };

  "org.scala-lang_scala-compiler-2.13.16" = fetchurl {
    name = "org.scala-lang_scala-compiler-2.13.16";
    hash = "sha256-uPxnpCaIbviBXMJjY9+MSQCPa6iqEx/zgtO926dxv+U=";
    url = "https://repo1.maven.org/maven2/org/scala-lang/scala-compiler/2.13.16/scala-compiler-2.13.16.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/scala-compiler-2.13.16.pom"
            
      downloadedFile=$TMPDIR/scala-compiler-2.13.16.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-lang/scala-compiler/2.13.16/scala-compiler-2.13.16.jar"
      cp -v "$TMPDIR/scala-compiler-2.13.16.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-lang/scala-compiler/2.13.16";
  };

  "org.scala-lang_scala-library-2.13.15" = fetchurl {
    name = "org.scala-lang_scala-library-2.13.15";
    hash = "sha256-JnbDGZQKZZswRZuxauQywH/4rXzwzn++kMB4lw3OfPI=";
    url = "https://repo1.maven.org/maven2/org/scala-lang/scala-library/2.13.15/scala-library-2.13.15.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/scala-library-2.13.15.pom"
            
      downloadedFile=$TMPDIR/scala-library-2.13.15.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-lang/scala-library/2.13.15/scala-library-2.13.15.jar"
      cp -v "$TMPDIR/scala-library-2.13.15.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-lang/scala-library/2.13.15";
  };

  "org.scala-lang_scala-library-2.13.16" = fetchurl {
    name = "org.scala-lang_scala-library-2.13.16";
    hash = "sha256-7/NvAxKKPtghJ/+pTNxvmIAiAdtQXRTUvDwGGXwpnpU=";
    url = "https://repo1.maven.org/maven2/org/scala-lang/scala-library/2.13.16/scala-library-2.13.16.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/scala-library-2.13.16.pom"
            
      downloadedFile=$TMPDIR/scala-library-2.13.16.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-lang/scala-library/2.13.16/scala-library-2.13.16.jar"
      cp -v "$TMPDIR/scala-library-2.13.16.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-lang/scala-library/2.13.16";
  };

  "org.scala-lang_scala-reflect-2.13.15" = fetchurl {
    name = "org.scala-lang_scala-reflect-2.13.15";
    hash = "sha256-zmUU4hTEf5HC311UaNIHmzjSwWSbjXn6DyPP7ZzFy/8=";
    url = "https://repo1.maven.org/maven2/org/scala-lang/scala-reflect/2.13.15/scala-reflect-2.13.15.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/scala-reflect-2.13.15.pom"
            
      downloadedFile=$TMPDIR/scala-reflect-2.13.15.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-lang/scala-reflect/2.13.15/scala-reflect-2.13.15.jar"
      cp -v "$TMPDIR/scala-reflect-2.13.15.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-lang/scala-reflect/2.13.15";
  };

  "org.scala-lang_scala-reflect-2.13.16" = fetchurl {
    name = "org.scala-lang_scala-reflect-2.13.16";
    hash = "sha256-Y/cXrptUKnH51rsTo8reYZbqbrWuO+fohzQW3z9Nx90=";
    url = "https://repo1.maven.org/maven2/org/scala-lang/scala-reflect/2.13.16/scala-reflect-2.13.16.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/scala-reflect-2.13.16.pom"
            
      downloadedFile=$TMPDIR/scala-reflect-2.13.16.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-lang/scala-reflect/2.13.16/scala-reflect-2.13.16.jar"
      cp -v "$TMPDIR/scala-reflect-2.13.16.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-lang/scala-reflect/2.13.16";
  };

  "org.scala-lang_scala3-compiler_3-3.6.2" = fetchurl {
    name = "org.scala-lang_scala3-compiler_3-3.6.2";
    hash = "sha256-4wUykwZ0qw8x1WH5xNJwCP52I7326oM2XtWjeoDir+Y=";
    url = "https://repo1.maven.org/maven2/org/scala-lang/scala3-compiler_3/3.6.2/scala3-compiler_3-3.6.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/scala3-compiler_3-3.6.2.pom"
            
      downloadedFile=$TMPDIR/scala3-compiler_3-3.6.2.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-lang/scala3-compiler_3/3.6.2/scala3-compiler_3-3.6.2.jar"
      cp -v "$TMPDIR/scala3-compiler_3-3.6.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-lang/scala3-compiler_3/3.6.2";
  };

  "org.scala-lang_scala3-interfaces-3.6.2" = fetchurl {
    name = "org.scala-lang_scala3-interfaces-3.6.2";
    hash = "sha256-MQJryHiMDS2t2CsumeP0ciN9Q9ehju7Fh7jBpq4c+D0=";
    url = "https://repo1.maven.org/maven2/org/scala-lang/scala3-interfaces/3.6.2/scala3-interfaces-3.6.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/scala3-interfaces-3.6.2.pom"
            
      downloadedFile=$TMPDIR/scala3-interfaces-3.6.2.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-lang/scala3-interfaces/3.6.2/scala3-interfaces-3.6.2.jar"
      cp -v "$TMPDIR/scala3-interfaces-3.6.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-lang/scala3-interfaces/3.6.2";
  };

  "org.scala-lang_scala3-library_3-3.6.2" = fetchurl {
    name = "org.scala-lang_scala3-library_3-3.6.2";
    hash = "sha256-eBeOgZMRztMgvVXj9zFkXwPRxDgmkiBSxMtzoFxUOiU=";
    url = "https://repo1.maven.org/maven2/org/scala-lang/scala3-library_3/3.6.2/scala3-library_3-3.6.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/scala3-library_3-3.6.2.pom"
            
      downloadedFile=$TMPDIR/scala3-library_3-3.6.2.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-lang/scala3-library_3/3.6.2/scala3-library_3-3.6.2.jar"
      cp -v "$TMPDIR/scala3-library_3-3.6.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-lang/scala3-library_3/3.6.2";
  };

  "org.scala-lang_scala3-sbt-bridge-3.6.2" = fetchurl {
    name = "org.scala-lang_scala3-sbt-bridge-3.6.2";
    hash = "sha256-ouyRb3uSwsyJZkQkVqfY0ECascZSRBkzCSpi5F1GQG0=";
    url = "https://repo1.maven.org/maven2/org/scala-lang/scala3-sbt-bridge/3.6.2/scala3-sbt-bridge-3.6.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/scala3-sbt-bridge-3.6.2.pom"
            
      downloadedFile=$TMPDIR/scala3-sbt-bridge-3.6.2.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-lang/scala3-sbt-bridge/3.6.2/scala3-sbt-bridge-3.6.2.jar"
      cp -v "$TMPDIR/scala3-sbt-bridge-3.6.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-lang/scala3-sbt-bridge/3.6.2";
  };

  "org.scala-lang_scala3-tasty-inspector_3-3.6.2" = fetchurl {
    name = "org.scala-lang_scala3-tasty-inspector_3-3.6.2";
    hash = "sha256-PxXdYKIHwHoMfldTzPq7PqtQF+1YzPqh0Ma2ue70yxE=";
    url = "https://repo1.maven.org/maven2/org/scala-lang/scala3-tasty-inspector_3/3.6.2/scala3-tasty-inspector_3-3.6.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/scala3-tasty-inspector_3-3.6.2.pom"
            
      downloadedFile=$TMPDIR/scala3-tasty-inspector_3-3.6.2.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-lang/scala3-tasty-inspector_3/3.6.2/scala3-tasty-inspector_3-3.6.2.jar"
      cp -v "$TMPDIR/scala3-tasty-inspector_3-3.6.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-lang/scala3-tasty-inspector_3/3.6.2";
  };

  "org.scala-lang_scaladoc_3-3.6.2" = fetchurl {
    name = "org.scala-lang_scaladoc_3-3.6.2";
    hash = "sha256-BxzI0JCs9p8INscqFDoOV9HJIB+YM7EI0mCel7KoeBU=";
    url = "https://repo1.maven.org/maven2/org/scala-lang/scaladoc_3/3.6.2/scaladoc_3-3.6.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/scaladoc_3-3.6.2.pom"
            
      downloadedFile=$TMPDIR/scaladoc_3-3.6.2.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-lang/scaladoc_3/3.6.2/scaladoc_3-3.6.2.jar"
      cp -v "$TMPDIR/scaladoc_3-3.6.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-lang/scaladoc_3/3.6.2";
  };

  "org.scala-lang_scalap-2.13.15" = fetchurl {
    name = "org.scala-lang_scalap-2.13.15";
    hash = "sha256-JMnmdCcFUakGj+seqTp15VYMzcq90jGjQPmKbCzY28A=";
    url = "https://repo1.maven.org/maven2/org/scala-lang/scalap/2.13.15/scalap-2.13.15.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/scalap-2.13.15.pom"
            
      downloadedFile=$TMPDIR/scalap-2.13.15.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-lang/scalap/2.13.15/scalap-2.13.15.jar"
      cp -v "$TMPDIR/scalap-2.13.15.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-lang/scalap/2.13.15";
  };

  "org.scala-lang_tasty-core_3-3.6.2" = fetchurl {
    name = "org.scala-lang_tasty-core_3-3.6.2";
    hash = "sha256-StXvfqkjPpP18knWBc0UZv0bqzViP2FxFGMc5A1wQxw=";
    url = "https://repo1.maven.org/maven2/org/scala-lang/tasty-core_3/3.6.2/tasty-core_3-3.6.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/tasty-core_3-3.6.2.pom"
            
      downloadedFile=$TMPDIR/tasty-core_3-3.6.2.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-lang/tasty-core_3/3.6.2/tasty-core_3-3.6.2.jar"
      cp -v "$TMPDIR/tasty-core_3-3.6.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-lang/tasty-core_3/3.6.2";
  };

  "org.scala-sbt_collections_2.13-1.10.7" = fetchurl {
    name = "org.scala-sbt_collections_2.13-1.10.7";
    hash = "sha256-y4FuwehuxB+70YBIKj5jH9L8tQpHrWFpPc9VrBUzM6Y=";
    url = "https://repo1.maven.org/maven2/org/scala-sbt/collections_2.13/1.10.7/collections_2.13-1.10.7.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/collections_2.13-1.10.7.pom"
            
      downloadedFile=$TMPDIR/collections_2.13-1.10.7.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-sbt/collections_2.13/1.10.7/collections_2.13-1.10.7.jar"
      cp -v "$TMPDIR/collections_2.13-1.10.7.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-sbt/collections_2.13/1.10.7";
  };

  "org.scala-sbt_compiler-bridge_2.13-1.10.7" = fetchurl {
    name = "org.scala-sbt_compiler-bridge_2.13-1.10.7";
    hash = "sha256-jDtX3vTy7c5Ju7Yk792idscpXxfzqyRm0tubEazpQSY=";
    url = "https://repo1.maven.org/maven2/org/scala-sbt/compiler-bridge_2.13/1.10.7/compiler-bridge_2.13-1.10.7.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/compiler-bridge_2.13-1.10.7.pom"
            
      downloadedFile=$TMPDIR/compiler-bridge_2.13-1.10.7-sources.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-sbt/compiler-bridge_2.13/1.10.7/compiler-bridge_2.13-1.10.7-sources.jar"
      cp -v "$TMPDIR/compiler-bridge_2.13-1.10.7-sources.jar" "$out/"

      
      downloadedFile=$TMPDIR/compiler-bridge_2.13-1.10.7.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-sbt/compiler-bridge_2.13/1.10.7/compiler-bridge_2.13-1.10.7.jar"
      cp -v "$TMPDIR/compiler-bridge_2.13-1.10.7.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-sbt/compiler-bridge_2.13/1.10.7";
  };

  "org.scala-sbt_compiler-interface-1.10.3" = fetchurl {
    name = "org.scala-sbt_compiler-interface-1.10.3";
    hash = "sha256-eUpVhTZhe/6qSWs+XkD7bDhrqCv893HCNme7G4yPyeg=";
    url = "https://repo1.maven.org/maven2/org/scala-sbt/compiler-interface/1.10.3/compiler-interface-1.10.3.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/compiler-interface-1.10.3.pom"
            
      downloadedFile=$TMPDIR/compiler-interface-1.10.3.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-sbt/compiler-interface/1.10.3/compiler-interface-1.10.3.jar"
      cp -v "$TMPDIR/compiler-interface-1.10.3.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-sbt/compiler-interface/1.10.3";
  };

  "org.scala-sbt_compiler-interface-1.10.7" = fetchurl {
    name = "org.scala-sbt_compiler-interface-1.10.7";
    hash = "sha256-kTQDHARJUF88Se2cOxq+vFt6hIPCn2rSQyGr96AMZWQ=";
    url = "https://repo1.maven.org/maven2/org/scala-sbt/compiler-interface/1.10.7/compiler-interface-1.10.7.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/compiler-interface-1.10.7.pom"
            
      downloadedFile=$TMPDIR/compiler-interface-1.10.7-sources.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-sbt/compiler-interface/1.10.7/compiler-interface-1.10.7-sources.jar"
      cp -v "$TMPDIR/compiler-interface-1.10.7-sources.jar" "$out/"

      
      downloadedFile=$TMPDIR/compiler-interface-1.10.7.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-sbt/compiler-interface/1.10.7/compiler-interface-1.10.7.jar"
      cp -v "$TMPDIR/compiler-interface-1.10.7.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-sbt/compiler-interface/1.10.7";
  };

  "org.scala-sbt_compiler-interface-1.9.6" = fetchurl {
    name = "org.scala-sbt_compiler-interface-1.9.6";
    hash = "sha256-spep2us0CWZiButV6u4/nJyRqQozTEuo83z0CR/5cos=";
    url = "https://repo1.maven.org/maven2/org/scala-sbt/compiler-interface/1.9.6/compiler-interface-1.9.6.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/compiler-interface-1.9.6.pom"
            
      downloadedFile=$TMPDIR/compiler-interface-1.9.6.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-sbt/compiler-interface/1.9.6/compiler-interface-1.9.6.jar"
      cp -v "$TMPDIR/compiler-interface-1.9.6.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-sbt/compiler-interface/1.9.6";
  };

  "org.scala-sbt_core-macros_2.13-1.10.7" = fetchurl {
    name = "org.scala-sbt_core-macros_2.13-1.10.7";
    hash = "sha256-rsDP4K+yiTgLhmdDP7G5iL3i43v+Dwki9pKXPeWUp4c=";
    url = "https://repo1.maven.org/maven2/org/scala-sbt/core-macros_2.13/1.10.7/core-macros_2.13-1.10.7.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/core-macros_2.13-1.10.7.pom"
            
      downloadedFile=$TMPDIR/core-macros_2.13-1.10.7.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-sbt/core-macros_2.13/1.10.7/core-macros_2.13-1.10.7.jar"
      cp -v "$TMPDIR/core-macros_2.13-1.10.7.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-sbt/core-macros_2.13/1.10.7";
  };

  "org.scala-sbt_io_2.13-1.10.3" = fetchurl {
    name = "org.scala-sbt_io_2.13-1.10.3";
    hash = "sha256-+v1VvZGVtuyxaFCTxa66IGrvdqCDSJXPBAtHwDmdNQI=";
    url = "https://repo1.maven.org/maven2/org/scala-sbt/io_2.13/1.10.3/io_2.13-1.10.3.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/io_2.13-1.10.3.pom"
            
      downloadedFile=$TMPDIR/io_2.13-1.10.3.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-sbt/io_2.13/1.10.3/io_2.13-1.10.3.jar"
      cp -v "$TMPDIR/io_2.13-1.10.3.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-sbt/io_2.13/1.10.3";
  };

  "org.scala-sbt_launcher-interface-1.4.4" = fetchurl {
    name = "org.scala-sbt_launcher-interface-1.4.4";
    hash = "sha256-HWiEWRS8Grm7uQME6o7FYZFhWvJgvrvyxKXMATB0Z7E=";
    url = "https://repo1.maven.org/maven2/org/scala-sbt/launcher-interface/1.4.4/launcher-interface-1.4.4.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/launcher-interface-1.4.4.pom"
            
      downloadedFile=$TMPDIR/launcher-interface-1.4.4.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-sbt/launcher-interface/1.4.4/launcher-interface-1.4.4.jar"
      cp -v "$TMPDIR/launcher-interface-1.4.4.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-sbt/launcher-interface/1.4.4";
  };

  "org.scala-sbt_sbinary_2.13-0.5.1" = fetchurl {
    name = "org.scala-sbt_sbinary_2.13-0.5.1";
    hash = "sha256-+TrjPjSy8WVXq3IYHkHHIzttvHQbgwMLkwwWBys/ryw=";
    url = "https://repo1.maven.org/maven2/org/scala-sbt/sbinary_2.13/0.5.1/sbinary_2.13-0.5.1.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/sbinary_2.13-0.5.1.pom"
            
      downloadedFile=$TMPDIR/sbinary_2.13-0.5.1.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-sbt/sbinary_2.13/0.5.1/sbinary_2.13-0.5.1.jar"
      cp -v "$TMPDIR/sbinary_2.13-0.5.1.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-sbt/sbinary_2.13/0.5.1";
  };

  "org.scala-sbt_test-interface-1.0" = fetchurl {
    name = "org.scala-sbt_test-interface-1.0";
    hash = "sha256-Cc5Q+4mULLHRdw+7Wjx6spCLbKrckXHeNYjIibw4LWw=";
    url = "https://repo1.maven.org/maven2/org/scala-sbt/test-interface/1.0/test-interface-1.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/test-interface-1.0.pom"
            
      downloadedFile=$TMPDIR/test-interface-1.0.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-sbt/test-interface/1.0/test-interface-1.0.jar"
      cp -v "$TMPDIR/test-interface-1.0.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-sbt/test-interface/1.0";
  };

  "org.scala-sbt_util-control_2.13-1.10.7" = fetchurl {
    name = "org.scala-sbt_util-control_2.13-1.10.7";
    hash = "sha256-CCG/nXpVyd7YrtCYr47tPYIQs/G6vzb/3fCyZ21drhM=";
    url = "https://repo1.maven.org/maven2/org/scala-sbt/util-control_2.13/1.10.7/util-control_2.13-1.10.7.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/util-control_2.13-1.10.7.pom"
            
      downloadedFile=$TMPDIR/util-control_2.13-1.10.7.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-sbt/util-control_2.13/1.10.7/util-control_2.13-1.10.7.jar"
      cp -v "$TMPDIR/util-control_2.13-1.10.7.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-sbt/util-control_2.13/1.10.7";
  };

  "org.scala-sbt_util-interface-1.10.3" = fetchurl {
    name = "org.scala-sbt_util-interface-1.10.3";
    hash = "sha256-uu+2jvXfm2FaHkvJb44uRGdelrtS9pLfolU977MMQj0=";
    url = "https://repo1.maven.org/maven2/org/scala-sbt/util-interface/1.10.3/util-interface-1.10.3.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/util-interface-1.10.3.pom"
            
      downloadedFile=$TMPDIR/util-interface-1.10.3.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-sbt/util-interface/1.10.3/util-interface-1.10.3.jar"
      cp -v "$TMPDIR/util-interface-1.10.3.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-sbt/util-interface/1.10.3";
  };

  "org.scala-sbt_util-interface-1.10.7" = fetchurl {
    name = "org.scala-sbt_util-interface-1.10.7";
    hash = "sha256-k9TTANJrA3RAapizDe0pMLT/CkPCLweVuT8fuc40Re0=";
    url = "https://repo1.maven.org/maven2/org/scala-sbt/util-interface/1.10.7/util-interface-1.10.7.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/util-interface-1.10.7.pom"
            
      downloadedFile=$TMPDIR/util-interface-1.10.7-sources.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-sbt/util-interface/1.10.7/util-interface-1.10.7-sources.jar"
      cp -v "$TMPDIR/util-interface-1.10.7-sources.jar" "$out/"

      
      downloadedFile=$TMPDIR/util-interface-1.10.7.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-sbt/util-interface/1.10.7/util-interface-1.10.7.jar"
      cp -v "$TMPDIR/util-interface-1.10.7.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-sbt/util-interface/1.10.7";
  };

  "org.scala-sbt_util-interface-1.9.8" = fetchurl {
    name = "org.scala-sbt_util-interface-1.9.8";
    hash = "sha256-7PoE3Jj8JSBaNeK3IzCSlkwArEWP1Zo+XBn0OorE1I8=";
    url = "https://repo1.maven.org/maven2/org/scala-sbt/util-interface/1.9.8/util-interface-1.9.8.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/util-interface-1.9.8.pom"
            
      downloadedFile=$TMPDIR/util-interface-1.9.8.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-sbt/util-interface/1.9.8/util-interface-1.9.8.jar"
      cp -v "$TMPDIR/util-interface-1.9.8.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-sbt/util-interface/1.9.8";
  };

  "org.scala-sbt_util-logging_2.13-1.10.7" = fetchurl {
    name = "org.scala-sbt_util-logging_2.13-1.10.7";
    hash = "sha256-WfmccbZodef+h77nl7kEe6VxAsyzYlaHudZX0iyTRAs=";
    url = "https://repo1.maven.org/maven2/org/scala-sbt/util-logging_2.13/1.10.7/util-logging_2.13-1.10.7.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/util-logging_2.13-1.10.7.pom"
            
      downloadedFile=$TMPDIR/util-logging_2.13-1.10.7.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-sbt/util-logging_2.13/1.10.7/util-logging_2.13-1.10.7.jar"
      cp -v "$TMPDIR/util-logging_2.13-1.10.7.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-sbt/util-logging_2.13/1.10.7";
  };

  "org.scala-sbt_util-position_2.13-1.10.7" = fetchurl {
    name = "org.scala-sbt_util-position_2.13-1.10.7";
    hash = "sha256-hhRemdHTn5rI6IpViSG7KUxU/F2idL0AQf9CdNrF6xA=";
    url = "https://repo1.maven.org/maven2/org/scala-sbt/util-position_2.13/1.10.7/util-position_2.13-1.10.7.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/util-position_2.13-1.10.7.pom"
            
      downloadedFile=$TMPDIR/util-position_2.13-1.10.7.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-sbt/util-position_2.13/1.10.7/util-position_2.13-1.10.7.jar"
      cp -v "$TMPDIR/util-position_2.13-1.10.7.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-sbt/util-position_2.13/1.10.7";
  };

  "org.scala-sbt_util-relation_2.13-1.10.7" = fetchurl {
    name = "org.scala-sbt_util-relation_2.13-1.10.7";
    hash = "sha256-r2kRBeuvusfdZwqZsRRuwp1Sr1PjWDuchmXbVPcSUOM=";
    url = "https://repo1.maven.org/maven2/org/scala-sbt/util-relation_2.13/1.10.7/util-relation_2.13-1.10.7.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/util-relation_2.13-1.10.7.pom"
            
      downloadedFile=$TMPDIR/util-relation_2.13-1.10.7.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-sbt/util-relation_2.13/1.10.7/util-relation_2.13-1.10.7.jar"
      cp -v "$TMPDIR/util-relation_2.13-1.10.7.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-sbt/util-relation_2.13/1.10.7";
  };

  "org.scala-sbt_zinc-apiinfo_2.13-1.10.7" = fetchurl {
    name = "org.scala-sbt_zinc-apiinfo_2.13-1.10.7";
    hash = "sha256-nRr38N6FO18MM0+mlb9lK2EOhfl7GZ1y7ez6Eg3Ip8w=";
    url = "https://repo1.maven.org/maven2/org/scala-sbt/zinc-apiinfo_2.13/1.10.7/zinc-apiinfo_2.13-1.10.7.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/zinc-apiinfo_2.13-1.10.7.pom"
            
      downloadedFile=$TMPDIR/zinc-apiinfo_2.13-1.10.7.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-sbt/zinc-apiinfo_2.13/1.10.7/zinc-apiinfo_2.13-1.10.7.jar"
      cp -v "$TMPDIR/zinc-apiinfo_2.13-1.10.7.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-sbt/zinc-apiinfo_2.13/1.10.7";
  };

  "org.scala-sbt_zinc-classfile_2.13-1.10.7" = fetchurl {
    name = "org.scala-sbt_zinc-classfile_2.13-1.10.7";
    hash = "sha256-0UOFRvovrzzXFILxniSzo5MHr/XmSDGP4o3wh05uCxE=";
    url = "https://repo1.maven.org/maven2/org/scala-sbt/zinc-classfile_2.13/1.10.7/zinc-classfile_2.13-1.10.7.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/zinc-classfile_2.13-1.10.7.pom"
            
      downloadedFile=$TMPDIR/zinc-classfile_2.13-1.10.7.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-sbt/zinc-classfile_2.13/1.10.7/zinc-classfile_2.13-1.10.7.jar"
      cp -v "$TMPDIR/zinc-classfile_2.13-1.10.7.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-sbt/zinc-classfile_2.13/1.10.7";
  };

  "org.scala-sbt_zinc-classpath_2.13-1.10.7" = fetchurl {
    name = "org.scala-sbt_zinc-classpath_2.13-1.10.7";
    hash = "sha256-ozsxGbCrycacvLvk8tf0SHjdR9DU+5+494IJdkotRjg=";
    url = "https://repo1.maven.org/maven2/org/scala-sbt/zinc-classpath_2.13/1.10.7/zinc-classpath_2.13-1.10.7.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/zinc-classpath_2.13-1.10.7.pom"
            
      downloadedFile=$TMPDIR/zinc-classpath_2.13-1.10.7.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-sbt/zinc-classpath_2.13/1.10.7/zinc-classpath_2.13-1.10.7.jar"
      cp -v "$TMPDIR/zinc-classpath_2.13-1.10.7.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-sbt/zinc-classpath_2.13/1.10.7";
  };

  "org.scala-sbt_zinc-compile-core_2.13-1.10.7" = fetchurl {
    name = "org.scala-sbt_zinc-compile-core_2.13-1.10.7";
    hash = "sha256-E7vR41TZnHQWM6FyVr48WDhplRHFfFta4E4JEl8/CtQ=";
    url = "https://repo1.maven.org/maven2/org/scala-sbt/zinc-compile-core_2.13/1.10.7/zinc-compile-core_2.13-1.10.7.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/zinc-compile-core_2.13-1.10.7.pom"
            
      downloadedFile=$TMPDIR/zinc-compile-core_2.13-1.10.7.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-sbt/zinc-compile-core_2.13/1.10.7/zinc-compile-core_2.13-1.10.7.jar"
      cp -v "$TMPDIR/zinc-compile-core_2.13-1.10.7.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-sbt/zinc-compile-core_2.13/1.10.7";
  };

  "org.scala-sbt_zinc-core_2.13-1.10.7" = fetchurl {
    name = "org.scala-sbt_zinc-core_2.13-1.10.7";
    hash = "sha256-eQFUHHuNND26t29kyYz7vbAscVCJej/Lc8eQRktDTGA=";
    url = "https://repo1.maven.org/maven2/org/scala-sbt/zinc-core_2.13/1.10.7/zinc-core_2.13-1.10.7.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/zinc-core_2.13-1.10.7.pom"
            
      downloadedFile=$TMPDIR/zinc-core_2.13-1.10.7.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-sbt/zinc-core_2.13/1.10.7/zinc-core_2.13-1.10.7.jar"
      cp -v "$TMPDIR/zinc-core_2.13-1.10.7.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-sbt/zinc-core_2.13/1.10.7";
  };

  "org.scala-sbt_zinc-persist-core-assembly-1.10.7" = fetchurl {
    name = "org.scala-sbt_zinc-persist-core-assembly-1.10.7";
    hash = "sha256-KNr16Jjhbu3hrKUn/rTpEiEqWV/mC/iFhbO0YmToUCA=";
    url = "https://repo1.maven.org/maven2/org/scala-sbt/zinc-persist-core-assembly/1.10.7/zinc-persist-core-assembly-1.10.7.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/zinc-persist-core-assembly-1.10.7.pom"
            
      downloadedFile=$TMPDIR/zinc-persist-core-assembly-1.10.7.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-sbt/zinc-persist-core-assembly/1.10.7/zinc-persist-core-assembly-1.10.7.jar"
      cp -v "$TMPDIR/zinc-persist-core-assembly-1.10.7.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-sbt/zinc-persist-core-assembly/1.10.7";
  };

  "org.scala-sbt_zinc-persist_2.13-1.10.7" = fetchurl {
    name = "org.scala-sbt_zinc-persist_2.13-1.10.7";
    hash = "sha256-aO6mPsEjKHbl0ZqB/a/hZ/FArCqXpR63D8y86bxkwpU=";
    url = "https://repo1.maven.org/maven2/org/scala-sbt/zinc-persist_2.13/1.10.7/zinc-persist_2.13-1.10.7.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/zinc-persist_2.13-1.10.7.pom"
            
      downloadedFile=$TMPDIR/zinc-persist_2.13-1.10.7.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-sbt/zinc-persist_2.13/1.10.7/zinc-persist_2.13-1.10.7.jar"
      cp -v "$TMPDIR/zinc-persist_2.13-1.10.7.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-sbt/zinc-persist_2.13/1.10.7";
  };

  "org.scala-sbt_zinc_2.13-1.10.7" = fetchurl {
    name = "org.scala-sbt_zinc_2.13-1.10.7";
    hash = "sha256-G87j0JvuTu7cEu4gUZ268vxJ79vs7qR0p8J1wT+wwD4=";
    url = "https://repo1.maven.org/maven2/org/scala-sbt/zinc_2.13/1.10.7/zinc_2.13-1.10.7.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/zinc_2.13-1.10.7.pom"
            
      downloadedFile=$TMPDIR/zinc_2.13-1.10.7.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-sbt/zinc_2.13/1.10.7/zinc_2.13-1.10.7.jar"
      cp -v "$TMPDIR/zinc_2.13-1.10.7.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-sbt/zinc_2.13/1.10.7";
  };

  "org.springframework_spring-framework-bom-5.3.39" = fetchurl {
    name = "org.springframework_spring-framework-bom-5.3.39";
    hash = "sha256-V+sR9AvokPz2NrvEFCxdLHl3jrW2o9dP3gisCDAUUDA=";
    url = "https://repo1.maven.org/maven2/org/springframework/spring-framework-bom/5.3.39/spring-framework-bom-5.3.39.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/spring-framework-bom-5.3.39.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/springframework/spring-framework-bom/5.3.39";
  };

  "org.typelevel_algebra_2.13-2.8.0" = fetchurl {
    name = "org.typelevel_algebra_2.13-2.8.0";
    hash = "sha256-r8lNMqbAa4qzw1PiBMQMIVSCDGKyy1Tdfo/6yOpaoZc=";
    url = "https://repo1.maven.org/maven2/org/typelevel/algebra_2.13/2.8.0/algebra_2.13-2.8.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/algebra_2.13-2.8.0.pom"
            
      downloadedFile=$TMPDIR/algebra_2.13-2.8.0.jar
      tryDownload "https://repo1.maven.org/maven2/org/typelevel/algebra_2.13/2.8.0/algebra_2.13-2.8.0.jar"
      cp -v "$TMPDIR/algebra_2.13-2.8.0.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/typelevel/algebra_2.13/2.8.0";
  };

  "org.typelevel_cats-kernel_2.13-2.8.0" = fetchurl {
    name = "org.typelevel_cats-kernel_2.13-2.8.0";
    hash = "sha256-s6L0OArPjCAClIWdjTgRepGjR+kJXhlqHClMbNi3yUs=";
    url = "https://repo1.maven.org/maven2/org/typelevel/cats-kernel_2.13/2.8.0/cats-kernel_2.13-2.8.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/cats-kernel_2.13-2.8.0.pom"
            
      downloadedFile=$TMPDIR/cats-kernel_2.13-2.8.0.jar
      tryDownload "https://repo1.maven.org/maven2/org/typelevel/cats-kernel_2.13/2.8.0/cats-kernel_2.13-2.8.0.jar"
      cp -v "$TMPDIR/cats-kernel_2.13-2.8.0.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/typelevel/cats-kernel_2.13/2.8.0";
  };

  "org.typelevel_spire-macros_2.13-0.18.0" = fetchurl {
    name = "org.typelevel_spire-macros_2.13-0.18.0";
    hash = "sha256-BkgngMlMEHzel8RYJ+6Pyjopv9dHhXRVm//J+auxE2o=";
    url = "https://repo1.maven.org/maven2/org/typelevel/spire-macros_2.13/0.18.0/spire-macros_2.13-0.18.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/spire-macros_2.13-0.18.0.pom"
            
      downloadedFile=$TMPDIR/spire-macros_2.13-0.18.0.jar
      tryDownload "https://repo1.maven.org/maven2/org/typelevel/spire-macros_2.13/0.18.0/spire-macros_2.13-0.18.0.jar"
      cp -v "$TMPDIR/spire-macros_2.13-0.18.0.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/typelevel/spire-macros_2.13/0.18.0";
  };

  "org.typelevel_spire-platform_2.13-0.18.0" = fetchurl {
    name = "org.typelevel_spire-platform_2.13-0.18.0";
    hash = "sha256-QLgA1LL95gtutk9ktWxq8jmyr9BIAEfRlHFS0jt13CY=";
    url = "https://repo1.maven.org/maven2/org/typelevel/spire-platform_2.13/0.18.0/spire-platform_2.13-0.18.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/spire-platform_2.13-0.18.0.pom"
            
      downloadedFile=$TMPDIR/spire-platform_2.13-0.18.0.jar
      tryDownload "https://repo1.maven.org/maven2/org/typelevel/spire-platform_2.13/0.18.0/spire-platform_2.13-0.18.0.jar"
      cp -v "$TMPDIR/spire-platform_2.13-0.18.0.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/typelevel/spire-platform_2.13/0.18.0";
  };

  "org.typelevel_spire-util_2.13-0.18.0" = fetchurl {
    name = "org.typelevel_spire-util_2.13-0.18.0";
    hash = "sha256-TtFz/tgqsdZdL2wlNT8e513i92LfvvCGbvsy3VT9Wc8=";
    url = "https://repo1.maven.org/maven2/org/typelevel/spire-util_2.13/0.18.0/spire-util_2.13-0.18.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/spire-util_2.13-0.18.0.pom"
            
      downloadedFile=$TMPDIR/spire-util_2.13-0.18.0.jar
      tryDownload "https://repo1.maven.org/maven2/org/typelevel/spire-util_2.13/0.18.0/spire-util_2.13-0.18.0.jar"
      cp -v "$TMPDIR/spire-util_2.13-0.18.0.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/typelevel/spire-util_2.13/0.18.0";
  };

  "org.typelevel_spire_2.13-0.18.0" = fetchurl {
    name = "org.typelevel_spire_2.13-0.18.0";
    hash = "sha256-MxjpoZbni1cNWhfRcUl9aR0GM2YrFwl3S6KeTBb5J3c=";
    url = "https://repo1.maven.org/maven2/org/typelevel/spire_2.13/0.18.0/spire_2.13-0.18.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/spire_2.13-0.18.0.pom"
            
      downloadedFile=$TMPDIR/spire_2.13-0.18.0.jar
      tryDownload "https://repo1.maven.org/maven2/org/typelevel/spire_2.13/0.18.0/spire_2.13-0.18.0.jar"
      cp -v "$TMPDIR/spire_2.13-0.18.0.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/typelevel/spire_2.13/0.18.0";
  };

  "org.yaml_snakeyaml-2.0" = fetchurl {
    name = "org.yaml_snakeyaml-2.0";
    hash = "sha256-4/5l8lMWWNxqv1JGr0n8QtEo0KGAUGULj7lmdy9TODI=";
    url = "https://repo1.maven.org/maven2/org/yaml/snakeyaml/2.0/snakeyaml-2.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/snakeyaml-2.0.pom"
            
      downloadedFile=$TMPDIR/snakeyaml-2.0.jar
      tryDownload "https://repo1.maven.org/maven2/org/yaml/snakeyaml/2.0/snakeyaml-2.0.jar"
      cp -v "$TMPDIR/snakeyaml-2.0.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/yaml/snakeyaml/2.0";
  };

  "com.fasterxml.jackson_jackson-base-2.12.1" = fetchurl {
    name = "com.fasterxml.jackson_jackson-base-2.12.1";
    hash = "sha256-QdwEWejSbiS//t8L9WxLqUxc0QQMY90a7ckBf6YzS2M=";
    url = "https://repo1.maven.org/maven2/com/fasterxml/jackson/jackson-base/2.12.1/jackson-base-2.12.1.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/jackson-base-2.12.1.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/fasterxml/jackson/jackson-base/2.12.1";
  };

  "com.fasterxml.jackson_jackson-base-2.15.1" = fetchurl {
    name = "com.fasterxml.jackson_jackson-base-2.15.1";
    hash = "sha256-DEG+wnRgBDaKE+g5oWHRRWcpgUH3rSj+eex3MKkiDYA=";
    url = "https://repo1.maven.org/maven2/com/fasterxml/jackson/jackson-base/2.15.1/jackson-base-2.15.1.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/jackson-base-2.15.1.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/fasterxml/jackson/jackson-base/2.15.1";
  };

  "com.fasterxml.jackson_jackson-bom-2.12.1" = fetchurl {
    name = "com.fasterxml.jackson_jackson-bom-2.12.1";
    hash = "sha256-IVTSEkQzRB352EzD1i+FXx8n+HSzPMD5TGq4Ez0VTzc=";
    url = "https://repo1.maven.org/maven2/com/fasterxml/jackson/jackson-bom/2.12.1/jackson-bom-2.12.1.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/jackson-bom-2.12.1.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/fasterxml/jackson/jackson-bom/2.12.1";
  };

  "com.fasterxml.jackson_jackson-bom-2.15.1" = fetchurl {
    name = "com.fasterxml.jackson_jackson-bom-2.15.1";
    hash = "sha256-xTY1hTkw6E3dYAMDZnockm2fm43WPMcIRt0k2oxO2O8=";
    url = "https://repo1.maven.org/maven2/com/fasterxml/jackson/jackson-bom/2.15.1/jackson-bom-2.15.1.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/jackson-bom-2.15.1.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/fasterxml/jackson/jackson-bom/2.15.1";
  };

  "com.fasterxml.jackson_jackson-bom-2.17.2" = fetchurl {
    name = "com.fasterxml.jackson_jackson-bom-2.17.2";
    hash = "sha256-uAhCPZKxSJE8I5PhUlyXZOF9QVS/Xh+BQiYGmUYA86E=";
    url = "https://repo1.maven.org/maven2/com/fasterxml/jackson/jackson-bom/2.17.2/jackson-bom-2.17.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/jackson-bom-2.17.2.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/fasterxml/jackson/jackson-bom/2.17.2";
  };

  "com.fasterxml.jackson_jackson-parent-2.12" = fetchurl {
    name = "com.fasterxml.jackson_jackson-parent-2.12";
    hash = "sha256-1XZX837v+3OgmuIWerAxNmHU3KA9W6GDs10dtM+w11o=";
    url = "https://repo1.maven.org/maven2/com/fasterxml/jackson/jackson-parent/2.12/jackson-parent-2.12.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/jackson-parent-2.12.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/fasterxml/jackson/jackson-parent/2.12";
  };

  "com.fasterxml.jackson_jackson-parent-2.15" = fetchurl {
    name = "com.fasterxml.jackson_jackson-parent-2.15";
    hash = "sha256-Rybw8nineMf0Xjlc5GhV4ayVQMYocW1rCXiNhgdXiXc=";
    url = "https://repo1.maven.org/maven2/com/fasterxml/jackson/jackson-parent/2.15/jackson-parent-2.15.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/jackson-parent-2.15.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/fasterxml/jackson/jackson-parent/2.15";
  };

  "com.fasterxml.jackson_jackson-parent-2.17" = fetchurl {
    name = "com.fasterxml.jackson_jackson-parent-2.17";
    hash = "sha256-bwpdlIPUrYpG6AmpG+vbSgz7gRpEaUy7i1k2ZxRlYGc=";
    url = "https://repo1.maven.org/maven2/com/fasterxml/jackson/jackson-parent/2.17/jackson-parent-2.17.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/jackson-parent-2.17.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/fasterxml/jackson/jackson-parent/2.17";
  };

  "com.github.scopt_scopt_2.13-4.1.0" = fetchurl {
    name = "com.github.scopt_scopt_2.13-4.1.0";
    hash = "sha256-8vlB7LBM6HNfmGOrsljlfCJ0SbMMpqR2Kmo9QWAKzJ8=";
    url = "https://repo1.maven.org/maven2/com/github/scopt/scopt_2.13/4.1.0/scopt_2.13-4.1.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/scopt_2.13-4.1.0.pom"
            
      downloadedFile=$TMPDIR/scopt_2.13-4.1.0.jar
      tryDownload "https://repo1.maven.org/maven2/com/github/scopt/scopt_2.13/4.1.0/scopt_2.13-4.1.0.jar"
      cp -v "$TMPDIR/scopt_2.13-4.1.0.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/github/scopt/scopt_2.13/4.1.0";
  };

  "com.thoughtworks.paranamer_paranamer-2.8" = fetchurl {
    name = "com.thoughtworks.paranamer_paranamer-2.8";
    hash = "sha256-ehB753YLCaI3R/EkbYk+Ev08o90TnNoC+uiJDOcm3Q8=";
    url = "https://repo1.maven.org/maven2/com/thoughtworks/paranamer/paranamer/2.8/paranamer-2.8.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/paranamer-2.8.pom"
            
      downloadedFile=$TMPDIR/paranamer-2.8.jar
      tryDownload "https://repo1.maven.org/maven2/com/thoughtworks/paranamer/paranamer/2.8/paranamer-2.8.jar"
      cp -v "$TMPDIR/paranamer-2.8.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/thoughtworks/paranamer/paranamer/2.8";
  };

  "com.thoughtworks.paranamer_paranamer-parent-2.8" = fetchurl {
    name = "com.thoughtworks.paranamer_paranamer-parent-2.8";
    hash = "sha256-+LBfeaWVmAiGP63PaqEd/M5Ks3RLQQyFanUgMAy8mkU=";
    url = "https://repo1.maven.org/maven2/com/thoughtworks/paranamer/paranamer-parent/2.8/paranamer-parent-2.8.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/paranamer-parent-2.8.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/thoughtworks/paranamer/paranamer-parent/2.8";
  };

  "com.vladsch.flexmark_flexmark-0.62.2" = fetchurl {
    name = "com.vladsch.flexmark_flexmark-0.62.2";
    hash = "sha256-CMbMcOs3cMmCu7+sAh6qiwj63tMDlJ6qIrZRbHF2gDE=";
    url = "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark/0.62.2/flexmark-0.62.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/flexmark-0.62.2.pom"
            
      downloadedFile=$TMPDIR/flexmark-0.62.2.jar
      tryDownload "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark/0.62.2/flexmark-0.62.2.jar"
      cp -v "$TMPDIR/flexmark-0.62.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/vladsch/flexmark/flexmark/0.62.2";
  };

  "com.vladsch.flexmark_flexmark-ext-anchorlink-0.62.2" = fetchurl {
    name = "com.vladsch.flexmark_flexmark-ext-anchorlink-0.62.2";
    hash = "sha256-weHNR6k/69NjAg2Vs72ce1wOZ1rwBicv4TMLDS9jnGE=";
    url = "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-ext-anchorlink/0.62.2/flexmark-ext-anchorlink-0.62.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/flexmark-ext-anchorlink-0.62.2.pom"
            
      downloadedFile=$TMPDIR/flexmark-ext-anchorlink-0.62.2.jar
      tryDownload "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-ext-anchorlink/0.62.2/flexmark-ext-anchorlink-0.62.2.jar"
      cp -v "$TMPDIR/flexmark-ext-anchorlink-0.62.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-ext-anchorlink/0.62.2";
  };

  "com.vladsch.flexmark_flexmark-ext-autolink-0.62.2" = fetchurl {
    name = "com.vladsch.flexmark_flexmark-ext-autolink-0.62.2";
    hash = "sha256-15OH05RylvbLSzEu47GBdhtKZvyP3ibjXETb+3Sn5+Y=";
    url = "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-ext-autolink/0.62.2/flexmark-ext-autolink-0.62.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/flexmark-ext-autolink-0.62.2.pom"
            
      downloadedFile=$TMPDIR/flexmark-ext-autolink-0.62.2.jar
      tryDownload "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-ext-autolink/0.62.2/flexmark-ext-autolink-0.62.2.jar"
      cp -v "$TMPDIR/flexmark-ext-autolink-0.62.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-ext-autolink/0.62.2";
  };

  "com.vladsch.flexmark_flexmark-ext-emoji-0.62.2" = fetchurl {
    name = "com.vladsch.flexmark_flexmark-ext-emoji-0.62.2";
    hash = "sha256-UHbh+WMLnLqFzhE9GIdc3pwFEBy94rNpWT6olRGnIvI=";
    url = "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-ext-emoji/0.62.2/flexmark-ext-emoji-0.62.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/flexmark-ext-emoji-0.62.2.pom"
            
      downloadedFile=$TMPDIR/flexmark-ext-emoji-0.62.2.jar
      tryDownload "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-ext-emoji/0.62.2/flexmark-ext-emoji-0.62.2.jar"
      cp -v "$TMPDIR/flexmark-ext-emoji-0.62.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-ext-emoji/0.62.2";
  };

  "com.vladsch.flexmark_flexmark-ext-gfm-strikethrough-0.62.2" = fetchurl {
    name = "com.vladsch.flexmark_flexmark-ext-gfm-strikethrough-0.62.2";
    hash = "sha256-1l/E13+s+Pc/CVD28MVSrqRUkkrfwKD6K0+2zvCQX8o=";
    url = "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-ext-gfm-strikethrough/0.62.2/flexmark-ext-gfm-strikethrough-0.62.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/flexmark-ext-gfm-strikethrough-0.62.2.pom"
            
      downloadedFile=$TMPDIR/flexmark-ext-gfm-strikethrough-0.62.2.jar
      tryDownload "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-ext-gfm-strikethrough/0.62.2/flexmark-ext-gfm-strikethrough-0.62.2.jar"
      cp -v "$TMPDIR/flexmark-ext-gfm-strikethrough-0.62.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-ext-gfm-strikethrough/0.62.2";
  };

  "com.vladsch.flexmark_flexmark-ext-gfm-tasklist-0.62.2" = fetchurl {
    name = "com.vladsch.flexmark_flexmark-ext-gfm-tasklist-0.62.2";
    hash = "sha256-gtACK+9qTISC22QYuWoyvgNeTXmuSOZxXuojXESKAvE=";
    url = "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-ext-gfm-tasklist/0.62.2/flexmark-ext-gfm-tasklist-0.62.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/flexmark-ext-gfm-tasklist-0.62.2.pom"
            
      downloadedFile=$TMPDIR/flexmark-ext-gfm-tasklist-0.62.2.jar
      tryDownload "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-ext-gfm-tasklist/0.62.2/flexmark-ext-gfm-tasklist-0.62.2.jar"
      cp -v "$TMPDIR/flexmark-ext-gfm-tasklist-0.62.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-ext-gfm-tasklist/0.62.2";
  };

  "com.vladsch.flexmark_flexmark-ext-ins-0.62.2" = fetchurl {
    name = "com.vladsch.flexmark_flexmark-ext-ins-0.62.2";
    hash = "sha256-VIKNuMXAxAbmNWnk2nWPgpSzbkoGfpA6miKQuvOUmF4=";
    url = "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-ext-ins/0.62.2/flexmark-ext-ins-0.62.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/flexmark-ext-ins-0.62.2.pom"
            
      downloadedFile=$TMPDIR/flexmark-ext-ins-0.62.2.jar
      tryDownload "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-ext-ins/0.62.2/flexmark-ext-ins-0.62.2.jar"
      cp -v "$TMPDIR/flexmark-ext-ins-0.62.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-ext-ins/0.62.2";
  };

  "com.vladsch.flexmark_flexmark-ext-superscript-0.62.2" = fetchurl {
    name = "com.vladsch.flexmark_flexmark-ext-superscript-0.62.2";
    hash = "sha256-pfRu434uIlDIkwSEaFwxZFwcUjTnU5cbuSfsG578PC4=";
    url = "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-ext-superscript/0.62.2/flexmark-ext-superscript-0.62.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/flexmark-ext-superscript-0.62.2.pom"
            
      downloadedFile=$TMPDIR/flexmark-ext-superscript-0.62.2.jar
      tryDownload "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-ext-superscript/0.62.2/flexmark-ext-superscript-0.62.2.jar"
      cp -v "$TMPDIR/flexmark-ext-superscript-0.62.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-ext-superscript/0.62.2";
  };

  "com.vladsch.flexmark_flexmark-ext-tables-0.62.2" = fetchurl {
    name = "com.vladsch.flexmark_flexmark-ext-tables-0.62.2";
    hash = "sha256-3Fef3ZHc6jjwTHjvOGsVvLAMbRMwJHlZ5X7SKIaCj6w=";
    url = "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-ext-tables/0.62.2/flexmark-ext-tables-0.62.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/flexmark-ext-tables-0.62.2.pom"
            
      downloadedFile=$TMPDIR/flexmark-ext-tables-0.62.2.jar
      tryDownload "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-ext-tables/0.62.2/flexmark-ext-tables-0.62.2.jar"
      cp -v "$TMPDIR/flexmark-ext-tables-0.62.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-ext-tables/0.62.2";
  };

  "com.vladsch.flexmark_flexmark-ext-wikilink-0.62.2" = fetchurl {
    name = "com.vladsch.flexmark_flexmark-ext-wikilink-0.62.2";
    hash = "sha256-NQtfUT4F3p6+nGk6o07EwlX1kZvkXarCfWw07QQgYyE=";
    url = "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-ext-wikilink/0.62.2/flexmark-ext-wikilink-0.62.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/flexmark-ext-wikilink-0.62.2.pom"
            
      downloadedFile=$TMPDIR/flexmark-ext-wikilink-0.62.2.jar
      tryDownload "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-ext-wikilink/0.62.2/flexmark-ext-wikilink-0.62.2.jar"
      cp -v "$TMPDIR/flexmark-ext-wikilink-0.62.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-ext-wikilink/0.62.2";
  };

  "com.vladsch.flexmark_flexmark-ext-yaml-front-matter-0.62.2" = fetchurl {
    name = "com.vladsch.flexmark_flexmark-ext-yaml-front-matter-0.62.2";
    hash = "sha256-tc0KpVAhnflMmVlFUXFqwocYsXuL3PiXeFtdO+p9Ta4=";
    url = "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-ext-yaml-front-matter/0.62.2/flexmark-ext-yaml-front-matter-0.62.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/flexmark-ext-yaml-front-matter-0.62.2.pom"
            
      downloadedFile=$TMPDIR/flexmark-ext-yaml-front-matter-0.62.2.jar
      tryDownload "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-ext-yaml-front-matter/0.62.2/flexmark-ext-yaml-front-matter-0.62.2.jar"
      cp -v "$TMPDIR/flexmark-ext-yaml-front-matter-0.62.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-ext-yaml-front-matter/0.62.2";
  };

  "com.vladsch.flexmark_flexmark-java-0.62.2" = fetchurl {
    name = "com.vladsch.flexmark_flexmark-java-0.62.2";
    hash = "sha256-DlxcWCry0vUFs1L54guu8FLGgpuYD9+ksL2x5sv6E9c=";
    url = "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-java/0.62.2/flexmark-java-0.62.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/flexmark-java-0.62.2.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-java/0.62.2";
  };

  "com.vladsch.flexmark_flexmark-jira-converter-0.62.2" = fetchurl {
    name = "com.vladsch.flexmark_flexmark-jira-converter-0.62.2";
    hash = "sha256-k4eeiCIqq4fE5F0MPS9FMDEdlWEb+Gd36pDNxQSFMFY=";
    url = "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-jira-converter/0.62.2/flexmark-jira-converter-0.62.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/flexmark-jira-converter-0.62.2.pom"
            
      downloadedFile=$TMPDIR/flexmark-jira-converter-0.62.2.jar
      tryDownload "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-jira-converter/0.62.2/flexmark-jira-converter-0.62.2.jar"
      cp -v "$TMPDIR/flexmark-jira-converter-0.62.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-jira-converter/0.62.2";
  };

  "com.vladsch.flexmark_flexmark-util-0.62.2" = fetchurl {
    name = "com.vladsch.flexmark_flexmark-util-0.62.2";
    hash = "sha256-A3coPMDIx8qFH4WcoKFEcAY6MDeICS9olH/SPgIEbeI=";
    url = "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-util/0.62.2/flexmark-util-0.62.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/flexmark-util-0.62.2.pom"
            
      downloadedFile=$TMPDIR/flexmark-util-0.62.2.jar
      tryDownload "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-util/0.62.2/flexmark-util-0.62.2.jar"
      cp -v "$TMPDIR/flexmark-util-0.62.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-util/0.62.2";
  };

  "com.vladsch.flexmark_flexmark-util-ast-0.62.2" = fetchurl {
    name = "com.vladsch.flexmark_flexmark-util-ast-0.62.2";
    hash = "sha256-bT7Cqm3k63wFdcC63M3WAtz5p0QqArmmCvpfPGuvDjw=";
    url = "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-util-ast/0.62.2/flexmark-util-ast-0.62.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/flexmark-util-ast-0.62.2.pom"
            
      downloadedFile=$TMPDIR/flexmark-util-ast-0.62.2.jar
      tryDownload "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-util-ast/0.62.2/flexmark-util-ast-0.62.2.jar"
      cp -v "$TMPDIR/flexmark-util-ast-0.62.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-util-ast/0.62.2";
  };

  "com.vladsch.flexmark_flexmark-util-builder-0.62.2" = fetchurl {
    name = "com.vladsch.flexmark_flexmark-util-builder-0.62.2";
    hash = "sha256-+kjX932WxGRANJw+UPDyy8MJB6wKUXI7tf+PyOAYbJM=";
    url = "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-util-builder/0.62.2/flexmark-util-builder-0.62.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/flexmark-util-builder-0.62.2.pom"
            
      downloadedFile=$TMPDIR/flexmark-util-builder-0.62.2.jar
      tryDownload "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-util-builder/0.62.2/flexmark-util-builder-0.62.2.jar"
      cp -v "$TMPDIR/flexmark-util-builder-0.62.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-util-builder/0.62.2";
  };

  "com.vladsch.flexmark_flexmark-util-collection-0.62.2" = fetchurl {
    name = "com.vladsch.flexmark_flexmark-util-collection-0.62.2";
    hash = "sha256-vsdaPDU/TcTKnim4MAWhcXp4P0upYTWIMLMSCeg6Wx4=";
    url = "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-util-collection/0.62.2/flexmark-util-collection-0.62.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/flexmark-util-collection-0.62.2.pom"
            
      downloadedFile=$TMPDIR/flexmark-util-collection-0.62.2.jar
      tryDownload "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-util-collection/0.62.2/flexmark-util-collection-0.62.2.jar"
      cp -v "$TMPDIR/flexmark-util-collection-0.62.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-util-collection/0.62.2";
  };

  "com.vladsch.flexmark_flexmark-util-data-0.62.2" = fetchurl {
    name = "com.vladsch.flexmark_flexmark-util-data-0.62.2";
    hash = "sha256-m3S05kD1HNXWdGXPwXapNqzLv4g2WicpuaNUJjvZDW4=";
    url = "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-util-data/0.62.2/flexmark-util-data-0.62.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/flexmark-util-data-0.62.2.pom"
            
      downloadedFile=$TMPDIR/flexmark-util-data-0.62.2.jar
      tryDownload "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-util-data/0.62.2/flexmark-util-data-0.62.2.jar"
      cp -v "$TMPDIR/flexmark-util-data-0.62.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-util-data/0.62.2";
  };

  "com.vladsch.flexmark_flexmark-util-dependency-0.62.2" = fetchurl {
    name = "com.vladsch.flexmark_flexmark-util-dependency-0.62.2";
    hash = "sha256-nSFsXZXFD67UbxMv6hAZEjv6VfCmewH9PsP6zk7vLR4=";
    url = "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-util-dependency/0.62.2/flexmark-util-dependency-0.62.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/flexmark-util-dependency-0.62.2.pom"
            
      downloadedFile=$TMPDIR/flexmark-util-dependency-0.62.2.jar
      tryDownload "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-util-dependency/0.62.2/flexmark-util-dependency-0.62.2.jar"
      cp -v "$TMPDIR/flexmark-util-dependency-0.62.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-util-dependency/0.62.2";
  };

  "com.vladsch.flexmark_flexmark-util-format-0.62.2" = fetchurl {
    name = "com.vladsch.flexmark_flexmark-util-format-0.62.2";
    hash = "sha256-j7GbAIjjp00wTPbuXCTO//af5J5JooOPmHh2Da3jBd0=";
    url = "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-util-format/0.62.2/flexmark-util-format-0.62.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/flexmark-util-format-0.62.2.pom"
            
      downloadedFile=$TMPDIR/flexmark-util-format-0.62.2.jar
      tryDownload "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-util-format/0.62.2/flexmark-util-format-0.62.2.jar"
      cp -v "$TMPDIR/flexmark-util-format-0.62.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-util-format/0.62.2";
  };

  "com.vladsch.flexmark_flexmark-util-html-0.62.2" = fetchurl {
    name = "com.vladsch.flexmark_flexmark-util-html-0.62.2";
    hash = "sha256-9MSBM5awDcqrCDRtRKKCrxD35X5DYf+U7NmUR8OOW94=";
    url = "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-util-html/0.62.2/flexmark-util-html-0.62.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/flexmark-util-html-0.62.2.pom"
            
      downloadedFile=$TMPDIR/flexmark-util-html-0.62.2.jar
      tryDownload "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-util-html/0.62.2/flexmark-util-html-0.62.2.jar"
      cp -v "$TMPDIR/flexmark-util-html-0.62.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-util-html/0.62.2";
  };

  "com.vladsch.flexmark_flexmark-util-misc-0.62.2" = fetchurl {
    name = "com.vladsch.flexmark_flexmark-util-misc-0.62.2";
    hash = "sha256-VfG2y0OgXWkcDF0VNHFTnOsf1jjmZtSZThZABQ0yc5A=";
    url = "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-util-misc/0.62.2/flexmark-util-misc-0.62.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/flexmark-util-misc-0.62.2.pom"
            
      downloadedFile=$TMPDIR/flexmark-util-misc-0.62.2.jar
      tryDownload "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-util-misc/0.62.2/flexmark-util-misc-0.62.2.jar"
      cp -v "$TMPDIR/flexmark-util-misc-0.62.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-util-misc/0.62.2";
  };

  "com.vladsch.flexmark_flexmark-util-options-0.62.2" = fetchurl {
    name = "com.vladsch.flexmark_flexmark-util-options-0.62.2";
    hash = "sha256-Px6MK19ozVJLQGj3fCpDhMTUtrWLzhiqdDDRdBpf8i8=";
    url = "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-util-options/0.62.2/flexmark-util-options-0.62.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/flexmark-util-options-0.62.2.pom"
            
      downloadedFile=$TMPDIR/flexmark-util-options-0.62.2.jar
      tryDownload "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-util-options/0.62.2/flexmark-util-options-0.62.2.jar"
      cp -v "$TMPDIR/flexmark-util-options-0.62.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-util-options/0.62.2";
  };

  "com.vladsch.flexmark_flexmark-util-sequence-0.62.2" = fetchurl {
    name = "com.vladsch.flexmark_flexmark-util-sequence-0.62.2";
    hash = "sha256-J8ZXFheFBaMP+b9VMZ02j5Sonvtf26k6DR7C5AspxVg=";
    url = "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-util-sequence/0.62.2/flexmark-util-sequence-0.62.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/flexmark-util-sequence-0.62.2.pom"
            
      downloadedFile=$TMPDIR/flexmark-util-sequence-0.62.2.jar
      tryDownload "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-util-sequence/0.62.2/flexmark-util-sequence-0.62.2.jar"
      cp -v "$TMPDIR/flexmark-util-sequence-0.62.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-util-sequence/0.62.2";
  };

  "com.vladsch.flexmark_flexmark-util-visitor-0.62.2" = fetchurl {
    name = "com.vladsch.flexmark_flexmark-util-visitor-0.62.2";
    hash = "sha256-sGUXA1qXnyVQTMPXJoAh4L1+L895QeeW7oazG3/NqyI=";
    url = "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-util-visitor/0.62.2/flexmark-util-visitor-0.62.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/flexmark-util-visitor-0.62.2.pom"
            
      downloadedFile=$TMPDIR/flexmark-util-visitor-0.62.2.jar
      tryDownload "https://repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-util-visitor/0.62.2/flexmark-util-visitor-0.62.2.jar"
      cp -v "$TMPDIR/flexmark-util-visitor-0.62.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/vladsch/flexmark/flexmark-util-visitor/0.62.2";
  };

  "io.github.alexarchambault_data-class_2.13-0.2.7" = fetchurl {
    name = "io.github.alexarchambault_data-class_2.13-0.2.7";
    hash = "sha256-PZ9by0bd2Rv4MWgWqJnmsVhQVLMaEOf7nmlfKB34JJs=";
    url = "https://repo1.maven.org/maven2/io/github/alexarchambault/data-class_2.13/0.2.7/data-class_2.13-0.2.7.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/data-class_2.13-0.2.7.pom"
            
      downloadedFile=$TMPDIR/data-class_2.13-0.2.7.jar
      tryDownload "https://repo1.maven.org/maven2/io/github/alexarchambault/data-class_2.13/0.2.7/data-class_2.13-0.2.7.jar"
      cp -v "$TMPDIR/data-class_2.13-0.2.7.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/io/github/alexarchambault/data-class_2.13/0.2.7";
  };

  "io.github.java-diff-utils_java-diff-utils-4.12" = fetchurl {
    name = "io.github.java-diff-utils_java-diff-utils-4.12";
    hash = "sha256-SMNRfv+BvfxjgwFH0fHU16fd1bDn/QMrPQN8Eyb6deA=";
    url = "https://repo1.maven.org/maven2/io/github/java-diff-utils/java-diff-utils/4.12/java-diff-utils-4.12.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/java-diff-utils-4.12.pom"
            
      downloadedFile=$TMPDIR/java-diff-utils-4.12.jar
      tryDownload "https://repo1.maven.org/maven2/io/github/java-diff-utils/java-diff-utils/4.12/java-diff-utils-4.12.jar"
      cp -v "$TMPDIR/java-diff-utils-4.12.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/io/github/java-diff-utils/java-diff-utils/4.12";
  };

  "io.github.java-diff-utils_java-diff-utils-4.15" = fetchurl {
    name = "io.github.java-diff-utils_java-diff-utils-4.15";
    hash = "sha256-SfOhFqK/GsStfRZLQm3yGJat/CQWb3YbJnoXd84l/R0=";
    url = "https://repo1.maven.org/maven2/io/github/java-diff-utils/java-diff-utils/4.15/java-diff-utils-4.15.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/java-diff-utils-4.15.pom"
            
      downloadedFile=$TMPDIR/java-diff-utils-4.15.jar
      tryDownload "https://repo1.maven.org/maven2/io/github/java-diff-utils/java-diff-utils/4.15/java-diff-utils-4.15.jar"
      cp -v "$TMPDIR/java-diff-utils-4.15.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/io/github/java-diff-utils/java-diff-utils/4.15";
  };

  "io.github.java-diff-utils_java-diff-utils-parent-4.12" = fetchurl {
    name = "io.github.java-diff-utils_java-diff-utils-parent-4.12";
    hash = "sha256-l9MekOAkDQrHpgMMLkbZQJtiaSmyE7h0XneiHciAFOI=";
    url = "https://repo1.maven.org/maven2/io/github/java-diff-utils/java-diff-utils-parent/4.12/java-diff-utils-parent-4.12.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/java-diff-utils-parent-4.12.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/io/github/java-diff-utils/java-diff-utils-parent/4.12";
  };

  "io.github.java-diff-utils_java-diff-utils-parent-4.15" = fetchurl {
    name = "io.github.java-diff-utils_java-diff-utils-parent-4.15";
    hash = "sha256-7U+fEo0qYFash7diRi0E8Ejv0MY8T70NzU+HswbmO34=";
    url = "https://repo1.maven.org/maven2/io/github/java-diff-utils/java-diff-utils-parent/4.15/java-diff-utils-parent-4.15.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/java-diff-utils-parent-4.15.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/io/github/java-diff-utils/java-diff-utils-parent/4.15";
  };

  "org.apache.commons_commons-lang3-3.17.0" = fetchurl {
    name = "org.apache.commons_commons-lang3-3.17.0";
    hash = "sha256-4R7rcq58WVs8WJr0JGIZkM43P3DmztsodHV7jK9v208=";
    url = "https://repo1.maven.org/maven2/org/apache/commons/commons-lang3/3.17.0/commons-lang3-3.17.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/commons-lang3-3.17.0.pom"
            
      downloadedFile=$TMPDIR/commons-lang3-3.17.0.jar
      tryDownload "https://repo1.maven.org/maven2/org/apache/commons/commons-lang3/3.17.0/commons-lang3-3.17.0.jar"
      cp -v "$TMPDIR/commons-lang3-3.17.0.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/apache/commons/commons-lang3/3.17.0";
  };

  "org.apache.commons_commons-parent-73" = fetchurl {
    name = "org.apache.commons_commons-parent-73";
    hash = "sha256-obPRPljEVPSQkbOlYYnlGJZ6+GcuuofouNFpVPt/R4g=";
    url = "https://repo1.maven.org/maven2/org/apache/commons/commons-parent/73/commons-parent-73.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/commons-parent-73.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/apache/commons/commons-parent/73";
  };

  "org.apache.commons_commons-parent-78" = fetchurl {
    name = "org.apache.commons_commons-parent-78";
    hash = "sha256-0aJAoMZMen5VZmg8WT/tz9MMHFaXx6DgdiAVpYrCsac=";
    url = "https://repo1.maven.org/maven2/org/apache/commons/commons-parent/78/commons-parent-78.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/commons-parent-78.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/apache/commons/commons-parent/78";
  };

  "org.apache.commons_commons-text-1.13.0" = fetchurl {
    name = "org.apache.commons_commons-text-1.13.0";
    hash = "sha256-bmb1fpgZoCG1UTUFOyUm+wonq12KTLYmp/P9GqPatOM=";
    url = "https://repo1.maven.org/maven2/org/apache/commons/commons-text/1.13.0/commons-text-1.13.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/commons-text-1.13.0.pom"
            
      downloadedFile=$TMPDIR/commons-text-1.13.0.jar
      tryDownload "https://repo1.maven.org/maven2/org/apache/commons/commons-text/1.13.0/commons-text-1.13.0.jar"
      cp -v "$TMPDIR/commons-text-1.13.0.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/apache/commons/commons-text/1.13.0";
  };

  "org.apache.groovy_groovy-bom-4.0.22" = fetchurl {
    name = "org.apache.groovy_groovy-bom-4.0.22";
    hash = "sha256-9hsejVx5kj/oQtf+JvuKqOuzRfJIJbPoys04ArDEu9o=";
    url = "https://repo1.maven.org/maven2/org/apache/groovy/groovy-bom/4.0.22/groovy-bom-4.0.22.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/groovy-bom-4.0.22.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/apache/groovy/groovy-bom/4.0.22";
  };

  "org.apache.logging_logging-parent-11.3.0" = fetchurl {
    name = "org.apache.logging_logging-parent-11.3.0";
    hash = "sha256-06rPgZ5cRXf8cg84KMl7HVR3vcgvV0ThY76UsgAFf+w=";
    url = "https://repo1.maven.org/maven2/org/apache/logging/logging-parent/11.3.0/logging-parent-11.3.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/logging-parent-11.3.0.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/apache/logging/logging-parent/11.3.0";
  };

  "org.eclipse.ee4j_project-1.0.7" = fetchurl {
    name = "org.eclipse.ee4j_project-1.0.7";
    hash = "sha256-1HxZiJ0aeo1n8AWjwGKEoPwVFP9kndMBye7xwgYEal8=";
    url = "https://repo1.maven.org/maven2/org/eclipse/ee4j/project/1.0.7/project-1.0.7.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/project-1.0.7.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/eclipse/ee4j/project/1.0.7";
  };

  "org.fusesource.jansi_jansi-2.4.1" = fetchurl {
    name = "org.fusesource.jansi_jansi-2.4.1";
    hash = "sha256-M9G+H9TA5eB6NwlBmDP0ghxZzjbvLimPXNRZHyxJXac=";
    url = "https://repo1.maven.org/maven2/org/fusesource/jansi/jansi/2.4.1/jansi-2.4.1.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/jansi-2.4.1.pom"
            
      downloadedFile=$TMPDIR/jansi-2.4.1.jar
      tryDownload "https://repo1.maven.org/maven2/org/fusesource/jansi/jansi/2.4.1/jansi-2.4.1.jar"
      cp -v "$TMPDIR/jansi-2.4.1.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/fusesource/jansi/jansi/2.4.1";
  };

  "org.nibor.autolink_autolink-0.6.0" = fetchurl {
    name = "org.nibor.autolink_autolink-0.6.0";
    hash = "sha256-UyOje39E9ysUXMK3ey2jrm7S6e8EVQboYC46t+B6sdo=";
    url = "https://repo1.maven.org/maven2/org/nibor/autolink/autolink/0.6.0/autolink-0.6.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/autolink-0.6.0.pom"
            
      downloadedFile=$TMPDIR/autolink-0.6.0.jar
      tryDownload "https://repo1.maven.org/maven2/org/nibor/autolink/autolink/0.6.0/autolink-0.6.0.jar"
      cp -v "$TMPDIR/autolink-0.6.0.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/nibor/autolink/autolink/0.6.0";
  };

  "org.scala-lang.modules_scala-asm-9.7.0-scala-2" = fetchurl {
    name = "org.scala-lang.modules_scala-asm-9.7.0-scala-2";
    hash = "sha256-yazixBmwEaFEABrjyNXbIEXxfdreoZW8T3NmFFM7sns=";
    url = "https://repo1.maven.org/maven2/org/scala-lang/modules/scala-asm/9.7.0-scala-2/scala-asm-9.7.0-scala-2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/scala-asm-9.7.0-scala-2.pom"
            
      downloadedFile=$TMPDIR/scala-asm-9.7.0-scala-2.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-lang/modules/scala-asm/9.7.0-scala-2/scala-asm-9.7.0-scala-2.jar"
      cp -v "$TMPDIR/scala-asm-9.7.0-scala-2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-lang/modules/scala-asm/9.7.0-scala-2";
  };

  "org.scala-lang.modules_scala-collection-compat_2.13-2.11.0" = fetchurl {
    name = "org.scala-lang.modules_scala-collection-compat_2.13-2.11.0";
    hash = "sha256-34Z4SWRKWs8IzYw1hpEIpmX4hSWQ0tbQx7IXERT1Y7Q=";
    url = "https://repo1.maven.org/maven2/org/scala-lang/modules/scala-collection-compat_2.13/2.11.0/scala-collection-compat_2.13-2.11.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/scala-collection-compat_2.13-2.11.0.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-lang/modules/scala-collection-compat_2.13/2.11.0";
  };

  "org.scala-lang.modules_scala-collection-compat_2.13-2.12.0" = fetchurl {
    name = "org.scala-lang.modules_scala-collection-compat_2.13-2.12.0";
    hash = "sha256-gdUFn7dadEj342MYKz1lj4dLYz+AkOzRiIC0spS8CXk=";
    url = "https://repo1.maven.org/maven2/org/scala-lang/modules/scala-collection-compat_2.13/2.12.0/scala-collection-compat_2.13-2.12.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/scala-collection-compat_2.13-2.12.0.pom"
            
      downloadedFile=$TMPDIR/scala-collection-compat_2.13-2.12.0.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-lang/modules/scala-collection-compat_2.13/2.12.0/scala-collection-compat_2.13-2.12.0.jar"
      cp -v "$TMPDIR/scala-collection-compat_2.13-2.12.0.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-lang/modules/scala-collection-compat_2.13/2.12.0";
  };

  "org.scala-lang.modules_scala-collection-compat_2.13-2.8.1" = fetchurl {
    name = "org.scala-lang.modules_scala-collection-compat_2.13-2.8.1";
    hash = "sha256-dGa38lKrLlVNIoMC+hvyhNSihX7RTzNdwBHpatYRitQ=";
    url = "https://repo1.maven.org/maven2/org/scala-lang/modules/scala-collection-compat_2.13/2.8.1/scala-collection-compat_2.13-2.8.1.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/scala-collection-compat_2.13-2.8.1.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-lang/modules/scala-collection-compat_2.13/2.8.1";
  };

  "org.scala-lang.modules_scala-collection-compat_3-2.8.1" = fetchurl {
    name = "org.scala-lang.modules_scala-collection-compat_3-2.8.1";
    hash = "sha256-kxNr6boD/fQ2D+Xfc0X5bcpyWVJYmqVQV2ynT7NCwRY=";
    url = "https://repo1.maven.org/maven2/org/scala-lang/modules/scala-collection-compat_3/2.8.1/scala-collection-compat_3-2.8.1.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/scala-collection-compat_3-2.8.1.pom"
            
      downloadedFile=$TMPDIR/scala-collection-compat_3-2.8.1.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-lang/modules/scala-collection-compat_3/2.8.1/scala-collection-compat_3-2.8.1.jar"
      cp -v "$TMPDIR/scala-collection-compat_3-2.8.1.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-lang/modules/scala-collection-compat_3/2.8.1";
  };

  "org.scala-lang.modules_scala-parallel-collections_2.13-0.2.0" = fetchurl {
    name = "org.scala-lang.modules_scala-parallel-collections_2.13-0.2.0";
    hash = "sha256-chqRhtzyMJjeR4ohA5YhNjGV8kLHTy5yZjNCyYIO/wo=";
    url = "https://repo1.maven.org/maven2/org/scala-lang/modules/scala-parallel-collections_2.13/0.2.0/scala-parallel-collections_2.13-0.2.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/scala-parallel-collections_2.13-0.2.0.pom"
            
      downloadedFile=$TMPDIR/scala-parallel-collections_2.13-0.2.0.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-lang/modules/scala-parallel-collections_2.13/0.2.0/scala-parallel-collections_2.13-0.2.0.jar"
      cp -v "$TMPDIR/scala-parallel-collections_2.13-0.2.0.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-lang/modules/scala-parallel-collections_2.13/0.2.0";
  };

  "org.scala-lang.modules_scala-parser-combinators_2.13-1.1.2" = fetchurl {
    name = "org.scala-lang.modules_scala-parser-combinators_2.13-1.1.2";
    hash = "sha256-sM5GWZ8/K1Jchj4V3FTvaWhfSJiHq0PKtQpd5W94Hps=";
    url = "https://repo1.maven.org/maven2/org/scala-lang/modules/scala-parser-combinators_2.13/1.1.2/scala-parser-combinators_2.13-1.1.2.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/scala-parser-combinators_2.13-1.1.2.pom"
            
      downloadedFile=$TMPDIR/scala-parser-combinators_2.13-1.1.2.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-lang/modules/scala-parser-combinators_2.13/1.1.2/scala-parser-combinators_2.13-1.1.2.jar"
      cp -v "$TMPDIR/scala-parser-combinators_2.13-1.1.2.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-lang/modules/scala-parser-combinators_2.13/1.1.2";
  };

  "org.scala-lang.modules_scala-xml_2.13-2.2.0" = fetchurl {
    name = "org.scala-lang.modules_scala-xml_2.13-2.2.0";
    hash = "sha256-Vy0piitgB2wPXiORd+dcBEZVcMZSjcbKJz4lNKZgeec=";
    url = "https://repo1.maven.org/maven2/org/scala-lang/modules/scala-xml_2.13/2.2.0/scala-xml_2.13-2.2.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/scala-xml_2.13-2.2.0.pom"
            
      downloadedFile=$TMPDIR/scala-xml_2.13-2.2.0.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-lang/modules/scala-xml_2.13/2.2.0/scala-xml_2.13-2.2.0.jar"
      cp -v "$TMPDIR/scala-xml_2.13-2.2.0.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-lang/modules/scala-xml_2.13/2.2.0";
  };

  "org.scala-lang.modules_scala-xml_2.13-2.3.0" = fetchurl {
    name = "org.scala-lang.modules_scala-xml_2.13-2.3.0";
    hash = "sha256-TZaDZ9UjQB20IMvxqxub63LbqSNDMAhFDRtYfvbzI58=";
    url = "https://repo1.maven.org/maven2/org/scala-lang/modules/scala-xml_2.13/2.3.0/scala-xml_2.13-2.3.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/scala-xml_2.13-2.3.0.pom"
            
      downloadedFile=$TMPDIR/scala-xml_2.13-2.3.0.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-lang/modules/scala-xml_2.13/2.3.0/scala-xml_2.13-2.3.0.jar"
      cp -v "$TMPDIR/scala-xml_2.13-2.3.0.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-lang/modules/scala-xml_2.13/2.3.0";
  };

  "org.scala-sbt.jline_jline-2.14.7-sbt-9a88bc413e2b34a4580c001c654d1a7f4f65bf18" = fetchurl {
    name = "org.scala-sbt.jline_jline-2.14.7-sbt-9a88bc413e2b34a4580c001c654d1a7f4f65bf18";
    hash = "sha256-1Nq7/UMXSlaZ7iwR1WMryltAmS8/fRCK6u93cm+1uh4=";
    url = "https://repo1.maven.org/maven2/org/scala-sbt/jline/jline/2.14.7-sbt-9a88bc413e2b34a4580c001c654d1a7f4f65bf18/jline-2.14.7-sbt-9a88bc413e2b34a4580c001c654d1a7f4f65bf18.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/jline-2.14.7-sbt-9a88bc413e2b34a4580c001c654d1a7f4f65bf18.pom"
            
      downloadedFile=$TMPDIR/jline-2.14.7-sbt-9a88bc413e2b34a4580c001c654d1a7f4f65bf18.jar
      tryDownload "https://repo1.maven.org/maven2/org/scala-sbt/jline/jline/2.14.7-sbt-9a88bc413e2b34a4580c001c654d1a7f4f65bf18/jline-2.14.7-sbt-9a88bc413e2b34a4580c001c654d1a7f4f65bf18.jar"
      cp -v "$TMPDIR/jline-2.14.7-sbt-9a88bc413e2b34a4580c001c654d1a7f4f65bf18.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/scala-sbt/jline/jline/2.14.7-sbt-9a88bc413e2b34a4580c001c654d1a7f4f65bf18";
  };

  "org.sonatype.oss_oss-parent-9" = fetchurl {
    name = "org.sonatype.oss_oss-parent-9";
    hash = "sha256-kJ3QfnDTAvamYaHQowpAKW1gPDFDXbiP2lNPzNllIWY=";
    url = "https://repo1.maven.org/maven2/org/sonatype/oss/oss-parent/9/oss-parent-9.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/oss-parent-9.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/sonatype/oss/oss-parent/9";
  };

  "ua.co.k_strftime4j-1.0.5" = fetchurl {
    name = "ua.co.k_strftime4j-1.0.5";
    hash = "sha256-Wrg3ftbV/dCtAhULZcti/FJ2XVbpqd9fM4Z6A/fOwAo=";
    url = "https://repo1.maven.org/maven2/ua/co/k/strftime4j/1.0.5/strftime4j-1.0.5.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/strftime4j-1.0.5.pom"
            
      downloadedFile=$TMPDIR/strftime4j-1.0.5.jar
      tryDownload "https://repo1.maven.org/maven2/ua/co/k/strftime4j/1.0.5/strftime4j-1.0.5.jar"
      cp -v "$TMPDIR/strftime4j-1.0.5.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/ua/co/k/strftime4j/1.0.5";
  };

  "com.fasterxml.jackson.core_jackson-annotations-2.12.1" = fetchurl {
    name = "com.fasterxml.jackson.core_jackson-annotations-2.12.1";
    hash = "sha256-anUbI5JS/lVsxPul1sdmtNFsJbiyHvyz9au/cBV0L6w=";
    url = "https://repo1.maven.org/maven2/com/fasterxml/jackson/core/jackson-annotations/2.12.1/jackson-annotations-2.12.1.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/jackson-annotations-2.12.1.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/fasterxml/jackson/core/jackson-annotations/2.12.1";
  };

  "com.fasterxml.jackson.core_jackson-annotations-2.15.1" = fetchurl {
    name = "com.fasterxml.jackson.core_jackson-annotations-2.15.1";
    hash = "sha256-hwI7CChHkZif7MNeHDjPf6OuNcncc9i7zIET6JUiSY8=";
    url = "https://repo1.maven.org/maven2/com/fasterxml/jackson/core/jackson-annotations/2.15.1/jackson-annotations-2.15.1.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/jackson-annotations-2.15.1.pom"
            
      downloadedFile=$TMPDIR/jackson-annotations-2.15.1.jar
      tryDownload "https://repo1.maven.org/maven2/com/fasterxml/jackson/core/jackson-annotations/2.15.1/jackson-annotations-2.15.1.jar"
      cp -v "$TMPDIR/jackson-annotations-2.15.1.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/fasterxml/jackson/core/jackson-annotations/2.15.1";
  };

  "com.fasterxml.jackson.core_jackson-core-2.15.1" = fetchurl {
    name = "com.fasterxml.jackson.core_jackson-core-2.15.1";
    hash = "sha256-07N9Rg8OKF7hTLa+0AoF1hImT3acHpQBIJhHBnLUSOs=";
    url = "https://repo1.maven.org/maven2/com/fasterxml/jackson/core/jackson-core/2.15.1/jackson-core-2.15.1.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/jackson-core-2.15.1.pom"
            
      downloadedFile=$TMPDIR/jackson-core-2.15.1.jar
      tryDownload "https://repo1.maven.org/maven2/com/fasterxml/jackson/core/jackson-core/2.15.1/jackson-core-2.15.1.jar"
      cp -v "$TMPDIR/jackson-core-2.15.1.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/fasterxml/jackson/core/jackson-core/2.15.1";
  };

  "com.fasterxml.jackson.core_jackson-databind-2.15.1" = fetchurl {
    name = "com.fasterxml.jackson.core_jackson-databind-2.15.1";
    hash = "sha256-t8Sge4HbKg8XsqNgW69/3G3RKgK09MSCsPH7XYtsrew=";
    url = "https://repo1.maven.org/maven2/com/fasterxml/jackson/core/jackson-databind/2.15.1/jackson-databind-2.15.1.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/jackson-databind-2.15.1.pom"
            
      downloadedFile=$TMPDIR/jackson-databind-2.15.1.jar
      tryDownload "https://repo1.maven.org/maven2/com/fasterxml/jackson/core/jackson-databind/2.15.1/jackson-databind-2.15.1.jar"
      cp -v "$TMPDIR/jackson-databind-2.15.1.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/fasterxml/jackson/core/jackson-databind/2.15.1";
  };

  "com.fasterxml.jackson.dataformat_jackson-dataformat-yaml-2.15.1" = fetchurl {
    name = "com.fasterxml.jackson.dataformat_jackson-dataformat-yaml-2.15.1";
    hash = "sha256-gSpEZqpCXmFGg86xQeOlNRNdyBmiM/rN2kCTGhjhHt4=";
    url = "https://repo1.maven.org/maven2/com/fasterxml/jackson/dataformat/jackson-dataformat-yaml/2.15.1/jackson-dataformat-yaml-2.15.1.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/jackson-dataformat-yaml-2.15.1.pom"
            
      downloadedFile=$TMPDIR/jackson-dataformat-yaml-2.15.1.jar
      tryDownload "https://repo1.maven.org/maven2/com/fasterxml/jackson/dataformat/jackson-dataformat-yaml/2.15.1/jackson-dataformat-yaml-2.15.1.jar"
      cp -v "$TMPDIR/jackson-dataformat-yaml-2.15.1.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/fasterxml/jackson/dataformat/jackson-dataformat-yaml/2.15.1";
  };

  "com.fasterxml.jackson.dataformat_jackson-dataformats-text-2.15.1" = fetchurl {
    name = "com.fasterxml.jackson.dataformat_jackson-dataformats-text-2.15.1";
    hash = "sha256-1RiIP6cIRZoOMBV2+vmJJOYXMarqg+4l7XQ8S7OvAvg=";
    url = "https://repo1.maven.org/maven2/com/fasterxml/jackson/dataformat/jackson-dataformats-text/2.15.1/jackson-dataformats-text-2.15.1.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/jackson-dataformats-text-2.15.1.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/fasterxml/jackson/dataformat/jackson-dataformats-text/2.15.1";
  };

  "com.fasterxml.jackson.datatype_jackson-datatype-jsr310-2.12.1" = fetchurl {
    name = "com.fasterxml.jackson.datatype_jackson-datatype-jsr310-2.12.1";
    hash = "sha256-YH7YMZY1aeamRA6aVvF2JG3C1YLZhvaMpVCegAfdhFU=";
    url = "https://repo1.maven.org/maven2/com/fasterxml/jackson/datatype/jackson-datatype-jsr310/2.12.1/jackson-datatype-jsr310-2.12.1.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/jackson-datatype-jsr310-2.12.1.pom"
            
      downloadedFile=$TMPDIR/jackson-datatype-jsr310-2.12.1.jar
      tryDownload "https://repo1.maven.org/maven2/com/fasterxml/jackson/datatype/jackson-datatype-jsr310/2.12.1/jackson-datatype-jsr310-2.12.1.jar"
      cp -v "$TMPDIR/jackson-datatype-jsr310-2.12.1.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/fasterxml/jackson/datatype/jackson-datatype-jsr310/2.12.1";
  };

  "com.fasterxml.jackson.module_jackson-modules-java8-2.12.1" = fetchurl {
    name = "com.fasterxml.jackson.module_jackson-modules-java8-2.12.1";
    hash = "sha256-x5YmdPGcWOpCompDhApY6o5VZ+IUVHTbeday5HVW/NQ=";
    url = "https://repo1.maven.org/maven2/com/fasterxml/jackson/module/jackson-modules-java8/2.12.1/jackson-modules-java8-2.12.1.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/jackson-modules-java8-2.12.1.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/com/fasterxml/jackson/module/jackson-modules-java8/2.12.1";
  };

  "net.java.dev.jna_jna-5.14.0" = fetchurl {
    name = "net.java.dev.jna_jna-5.14.0";
    hash = "sha256-mvzJykzd4Cz473vRi15E0NReFk7YN7hPOtS5ZHUhCIg=";
    url = "https://repo1.maven.org/maven2/net/java/dev/jna/jna/5.14.0/jna-5.14.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/jna-5.14.0.pom"
            
      downloadedFile=$TMPDIR/jna-5.14.0.jar
      tryDownload "https://repo1.maven.org/maven2/net/java/dev/jna/jna/5.14.0/jna-5.14.0.jar"
      cp -v "$TMPDIR/jna-5.14.0.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/net/java/dev/jna/jna/5.14.0";
  };

  "net.java.dev.jna_jna-5.15.0" = fetchurl {
    name = "net.java.dev.jna_jna-5.15.0";
    hash = "sha256-7iRfZecKpdVWwZgDlGA+w6bI461J7TB+lr8I5sWiaoY=";
    url = "https://repo1.maven.org/maven2/net/java/dev/jna/jna/5.15.0/jna-5.15.0.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/jna-5.15.0.pom"
            
      downloadedFile=$TMPDIR/jna-5.15.0.jar
      tryDownload "https://repo1.maven.org/maven2/net/java/dev/jna/jna/5.15.0/jna-5.15.0.jar"
      cp -v "$TMPDIR/jna-5.15.0.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/net/java/dev/jna/jna/5.15.0";
  };

  "org.apache.logging.log4j_log4j-2.24.3" = fetchurl {
    name = "org.apache.logging.log4j_log4j-2.24.3";
    hash = "sha256-bWuk6kxsiWW675JezWblZ8RdkKFg9C/3CgzdMGJr1Z8=";
    url = "https://repo1.maven.org/maven2/org/apache/logging/log4j/log4j/2.24.3/log4j-2.24.3.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/log4j-2.24.3.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/apache/logging/log4j/log4j/2.24.3";
  };

  "org.apache.logging.log4j_log4j-api-2.24.3" = fetchurl {
    name = "org.apache.logging.log4j_log4j-api-2.24.3";
    hash = "sha256-y6wgpqMFwL3B3CrUbTI4HQTBjc4YSWxn0WF8QQSjpFw=";
    url = "https://repo1.maven.org/maven2/org/apache/logging/log4j/log4j-api/2.24.3/log4j-api-2.24.3.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/log4j-api-2.24.3.pom"
            
      downloadedFile=$TMPDIR/log4j-api-2.24.3.jar
      tryDownload "https://repo1.maven.org/maven2/org/apache/logging/log4j/log4j-api/2.24.3/log4j-api-2.24.3.jar"
      cp -v "$TMPDIR/log4j-api-2.24.3.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/apache/logging/log4j/log4j-api/2.24.3";
  };

  "org.apache.logging.log4j_log4j-bom-2.24.3" = fetchurl {
    name = "org.apache.logging.log4j_log4j-bom-2.24.3";
    hash = "sha256-UNEo/UyoskA/8X62/rwMQObDQxfHDiJKj2pBP9SNoek=";
    url = "https://repo1.maven.org/maven2/org/apache/logging/log4j/log4j-bom/2.24.3/log4j-bom-2.24.3.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/log4j-bom-2.24.3.pom"
      
    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/apache/logging/log4j/log4j-bom/2.24.3";
  };

  "org.apache.logging.log4j_log4j-core-2.24.3" = fetchurl {
    name = "org.apache.logging.log4j_log4j-core-2.24.3";
    hash = "sha256-kRXpkDJtXT0VoEyxj5hIc8Z8foh8rKnFqCpjohdh5LQ=";
    url = "https://repo1.maven.org/maven2/org/apache/logging/log4j/log4j-core/2.24.3/log4j-core-2.24.3.pom";
    recursiveHash = true;
    downloadToTemp = true;
    postFetch = ''
      mkdir -p "$out"
      cp -v "$downloadedFile" "$out/log4j-core-2.24.3.pom"
            
      downloadedFile=$TMPDIR/log4j-core-2.24.3.jar
      tryDownload "https://repo1.maven.org/maven2/org/apache/logging/log4j/log4j-core/2.24.3/log4j-core-2.24.3.jar"
      cp -v "$TMPDIR/log4j-core-2.24.3.jar" "$out/"

    '';
    passthru.installPath = "https/repo1.maven.org/maven2/org/apache/logging/log4j/log4j-core/2.24.3";
  };

}
# Project Source Hash:sha256-1g+ddVx3X+MSaXZjTrBLIFCTorkaLS9wRP4g85MKLtA=