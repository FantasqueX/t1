// SPDX-License-Identifier: Apache-2.0
// SPDX-FileCopyrightText: 2022 Jiuyang Liu <liu@jiuyang.me>

package org.chipsalliance.t1.configgen

import chisel3.experimental.SerializableModuleGenerator
import chisel3.util.BitPat
import chisel3.util.experimental.BitSet
import mainargs._
import org.chipsalliance.t1.rtl._
import org.chipsalliance.t1.rtl.lsu.LSUInstantiateParameter
import org.chipsalliance.t1.rtl.vrf.RamType

object Main {
  implicit object PathRead extends TokensReader.Simple[os.Path] {
    def shortName = "path"
    def read(strs: Seq[String]): Either[String, os.Path] = Right(os.Path(strs.head, os.pwd))
  }
  implicit class EmitVParameter(p: T1Parameter) {
    def emit(targetDir: os.Path) = os.write(
      targetDir / "config.json",
      upickle.default.write(SerializableModuleGenerator(classOf[T1], p), indent = 2)
    )
  }

  @main def listConfigs(
    @arg(name = "project-dir", short = 't') projectDir: os.Path = os.pwd
  ): Unit = {
    val declaredMethods =
      Main.getClass().getDeclaredMethods().filter(m => m.getParameters().mkString.contains("os.Path targetDir"))

    import scala.io.AnsiColor._

    val tmpDir = os.temp.dir(deleteOnExit = true)
    declaredMethods.foreach(configgen => {
      configgen.invoke(Main, tmpDir)
      val config = ujson.read(os.read(tmpDir / "config.json"))
      val param = config.obj("parameter")
      println(s"""${BOLD}${configgen.getName()}${RESET}
                 |  exts: ${param.obj("extensions")}
                 |  vlen: ${param.obj("vLen")}
                 |  bank: ${param.obj("vrfBankSize")}
                 |  dlen: ${param.obj("dLen")}
                 |  port: ${param.obj("vrfRamType").str.split('.').last}""".stripMargin)
      os.remove(tmpDir / "config.json")
    })

    os.write.over(
      projectDir / "configgen" / "all-configs.json",
      upickle.default.write(declaredMethods.map(_.getName()))
    )
  }

  @main def bulbasaur(
    @arg(name = "target-dir", short = 't') targetDir: os.Path
  ): Unit = T1Parameter(
    vLen = 1024,
    dLen = 32,
    extensions = Seq("Zve32x"),
    // banks=1 dLen=32
    lsuBankParameters = Seq(
      BitSet(BitPat("b??????????????????????????????"))
    ).map(bs => LSUBankParameter(bs, 4, false)),
    vrfBankSize = 1,
    vrfRamType = RamType.p0rwp1rw,
    vfuInstantiateParameter = VFUInstantiateParameter(
      slotCount = 4,
      logicModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[MaskedLogic], LogicParam(32, 0)), Seq(0, 1, 2, 3))
      ),
      aluModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(0)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(1)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(2)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(3))
      ),
      shifterModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneShifter], LaneShifterParameter(32, 0)), Seq(0, 1, 2, 3))
      ),
      mulModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneMul], LaneMulParam(32, 0)), Seq(0, 1, 2, 3))
      ),
      divModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneDiv], LaneDivParam(32, 0)), Seq(0, 1, 2, 3))
      ),
      divfpModuleParameters = Seq(),
      otherModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[OtherUnit], OtherUnitParam(32, 11, 6, 3, 4, 0)), Seq(0, 1, 2, 3))
      ),
      floatModuleParameters = Seq()
    )
  ).emit(targetDir)

  @main def charmander(
    @arg(name = "target-dir", short = 't') targetDir: os.Path
  ): Unit = T1Parameter(
    vLen = 1024,
    dLen = 64,
    extensions = Seq("Zve32x"),
    // banks=2 dLen=64
    lsuBankParameters = Seq(
      BitSet(BitPat("b???????????????????????0??????")),
      BitSet(BitPat("b???????????????????????1??????")),
    ).map(bs => LSUBankParameter(bs, 4, false)),
    vrfBankSize = 1,
    vrfRamType = RamType.p0rwp1rw,
    vfuInstantiateParameter = VFUInstantiateParameter(
      slotCount = 4,
      logicModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[MaskedLogic], LogicParam(32, 0)), Seq(0, 1, 2, 3))
      ),
      aluModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(0)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(1)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(2)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(3))
      ),
      shifterModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneShifter], LaneShifterParameter(32, 0)), Seq(0, 1, 2, 3))
      ),
      mulModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneMul], LaneMulParam(32, 0)), Seq(0, 1, 2, 3))
      ),
      divModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneDiv], LaneDivParam(32, 0)), Seq(0, 1, 2, 3))
      ),
      divfpModuleParameters = Seq(),
      otherModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[OtherUnit], OtherUnitParam(32, 11, 6, 3, 4, 0)), Seq(0, 1, 2, 3))
      ),
      floatModuleParameters = Seq()
    )
  ).emit(targetDir)

  @main def squirtle(
    @arg(name = "target-dir", short = 't') targetDir: os.Path
  ): Unit = T1Parameter(
    vLen = 1024,
    dLen = 256,
    extensions = Seq("Zve32x"),
    // banks=8 dLen=256
    lsuBankParameters = Seq(
      BitSet(BitPat("b?????????????????????000??????")),
      BitSet(BitPat("b?????????????????????001??????")),
      BitSet(BitPat("b?????????????????????010??????")),
      BitSet(BitPat("b?????????????????????011??????")),
      BitSet(BitPat("b?????????????????????100??????")),
      BitSet(BitPat("b?????????????????????101??????")),
      BitSet(BitPat("b?????????????????????110??????")),
      BitSet(BitPat("b?????????????????????111??????")),
    ).map(bs => LSUBankParameter(bs, 8, false)),
    vrfBankSize = 1,
    vrfRamType = RamType.p0rwp1rw,
    vfuInstantiateParameter = VFUInstantiateParameter(
      slotCount = 4,
      logicModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[MaskedLogic], LogicParam(32, 0)), Seq(0, 1, 2, 3))
      ),
      aluModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(0)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(1)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(2)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(3))
      ),
      shifterModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneShifter], LaneShifterParameter(32, 0)), Seq(0, 1, 2, 3))
      ),
      mulModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneMul], LaneMulParam(32, 0)), Seq(0, 1, 2, 3))
      ),
      divModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneDiv], LaneDivParam(32, 0)), Seq(0, 1, 2, 3))
      ),
      divfpModuleParameters = Seq(),
      otherModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[OtherUnit], OtherUnitParam(32, 11, 6, 3, 4, 0)), Seq(0, 1, 2, 3))
      ),
      floatModuleParameters = Seq()
    )
  ).emit(targetDir)

  // squirtle + fp => blastoise
  @main def blastoise(
    @arg(name = "target-dir", short = 't') targetDir: os.Path
  ): Unit = T1Parameter(
    vLen = 1024,
    dLen = 256,
    extensions = Seq("Zve32f"),
    // banks=2 dLen=256
    lsuBankParameters = Seq(
      BitSet(BitPat("b?????????????????????000??????")),
      BitSet(BitPat("b?????????????????????001??????")),
      BitSet(BitPat("b?????????????????????010??????")),
      BitSet(BitPat("b?????????????????????011??????")),
      BitSet(BitPat("b?????????????????????100??????")),
      BitSet(BitPat("b?????????????????????101??????")),
      BitSet(BitPat("b?????????????????????110??????")),
      BitSet(BitPat("b?????????????????????111??????")),
    ).map(bs => LSUBankParameter(bs, 4, false)),
    vrfBankSize = 1,
    vrfRamType = RamType.p0rwp1rw,
    vfuInstantiateParameter = VFUInstantiateParameter(
      slotCount = 4,
      logicModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[MaskedLogic], LogicParam(32, 0)), Seq(0, 1, 2, 3))
      ),
      aluModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(0)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(1)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(2)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(3))
      ),
      shifterModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneShifter], LaneShifterParameter(32, 0)), Seq(0, 1, 2, 3))
      ),
      mulModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneMul], LaneMulParam(32, 0)), Seq(0, 1, 2, 3))
      ),
      divModuleParameters = Seq(),
      divfpModuleParameters =
        Seq((SerializableModuleGenerator(classOf[LaneDivFP], LaneDivFPParam(32, 0)), Seq(0, 1, 2, 3))),
      otherModuleParameters =
        Seq((SerializableModuleGenerator(classOf[OtherUnit], OtherUnitParam(32, 11, 6, 3, 4, 0)), Seq(0, 1, 2, 3))),
      floatModuleParameters =
        Seq((SerializableModuleGenerator(classOf[LaneFloat], LaneFloatParam(32, 3)), Seq(0, 1, 2, 3)))
    )
  ).emit(targetDir)

  @main def seel(
    @arg(name = "target-dir", short = 't') targetDir: os.Path
  ): Unit = T1Parameter(
    vLen = 1024,
    dLen = 256,
    extensions = Seq("Zve32x"),
    // banks=2 dLen=256
    lsuBankParameters = Seq(
      BitSet(BitPat("b?????????????????????000??????")),
      BitSet(BitPat("b?????????????????????001??????")),
      BitSet(BitPat("b?????????????????????010??????")),
      BitSet(BitPat("b?????????????????????011??????")),
      BitSet(BitPat("b?????????????????????100??????")),
      BitSet(BitPat("b?????????????????????101??????")),
      BitSet(BitPat("b?????????????????????110??????")),
      BitSet(BitPat("b?????????????????????111??????")),
    ).map(bs => LSUBankParameter(bs, 4, false)),
    vrfBankSize = 2,
    vrfRamType = RamType.p0rp1w,
    vfuInstantiateParameter = VFUInstantiateParameter(
      slotCount = 4,
      logicModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[MaskedLogic], LogicParam(32, 0)), Seq(0, 1, 2, 3))
      ),
      aluModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(0)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(1)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(2)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(3))
      ),
      shifterModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneShifter], LaneShifterParameter(32, 0)), Seq(0, 1, 2, 3))
      ),
      mulModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneMul], LaneMulParam(32, 0)), Seq(0, 1, 2, 3))
      ),
      divModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneDiv], LaneDivParam(32, 0)), Seq(0, 1, 2, 3))
      ),
      divfpModuleParameters = Seq(),
      otherModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[OtherUnit], OtherUnitParam(32, 11, 6, 3, 4, 0)), Seq(0, 1, 2, 3))
      ),
      floatModuleParameters = Seq()
    )
  ).emit(targetDir)

  // seel + fp
  @main def dewgong(
    @arg(name = "target-dir", short = 't') targetDir: os.Path
  ): Unit = T1Parameter(
    vLen = 1024,
    dLen = 256,
    extensions = Seq("Zve32f"),
    // banks=2 dLen=256
    lsuBankParameters = Seq(
      BitSet(BitPat("b?????????????????????000??????")),
      BitSet(BitPat("b?????????????????????001??????")),
      BitSet(BitPat("b?????????????????????010??????")),
      BitSet(BitPat("b?????????????????????011??????")),
      BitSet(BitPat("b?????????????????????100??????")),
      BitSet(BitPat("b?????????????????????101??????")),
      BitSet(BitPat("b?????????????????????110??????")),
      BitSet(BitPat("b?????????????????????111??????")),
    ).map(bs => LSUBankParameter(bs, 4, false)),
    vrfBankSize = 2,
    vrfRamType = RamType.p0rp1w,
    vfuInstantiateParameter = VFUInstantiateParameter(
      slotCount = 4,
      logicModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[MaskedLogic], LogicParam(32, 0)), Seq(0, 1, 2, 3))
      ),
      aluModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(0)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(1)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(2)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(3))
      ),
      shifterModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneShifter], LaneShifterParameter(32, 0)), Seq(0, 1, 2, 3))
      ),
      mulModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneMul], LaneMulParam(32, 0)), Seq(0, 1, 2, 3))
      ),
      divModuleParameters = Seq(),
      divfpModuleParameters =
        Seq((SerializableModuleGenerator(classOf[LaneDivFP], LaneDivFPParam(32, 0)), Seq(0, 1, 2, 3))),
      otherModuleParameters =
        Seq((SerializableModuleGenerator(classOf[OtherUnit], OtherUnitParam(32, 11, 6, 3, 4, 0)), Seq(0, 1, 2, 3))),
      floatModuleParameters =
        Seq((SerializableModuleGenerator(classOf[LaneFloat], LaneFloatParam(32, 3)), Seq(0, 1, 2, 3)))
    )
  ).emit(targetDir)

  @main def horsea(
    @arg(name = "target-dir", short = 't') targetDir: os.Path
  ): Unit = T1Parameter(
    vLen = 1024,
    dLen = 256,
    extensions = Seq("Zve32x"),
    // banks=2 dLen=256
    lsuBankParameters = Seq(
      BitSet(BitPat("b?????????????????????000??????")),
      BitSet(BitPat("b?????????????????????001??????")),
      BitSet(BitPat("b?????????????????????010??????")),
      BitSet(BitPat("b?????????????????????011??????")),
      BitSet(BitPat("b?????????????????????100??????")),
      BitSet(BitPat("b?????????????????????101??????")),
      BitSet(BitPat("b?????????????????????110??????")),
      BitSet(BitPat("b?????????????????????111??????")),
    ).map(bs => LSUBankParameter(bs, 4, false)),
    vrfBankSize = 4,
    vrfRamType = RamType.p0rw,
    vfuInstantiateParameter = VFUInstantiateParameter(
      slotCount = 4,
      logicModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[MaskedLogic], LogicParam(32, 0)), Seq(0, 1, 2, 3))
      ),
      aluModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(0)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(1)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(2)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(3))
      ),
      shifterModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneShifter], LaneShifterParameter(32, 0)), Seq(0, 1, 2, 3))
      ),
      mulModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneMul], LaneMulParam(32, 0)), Seq(0, 1, 2, 3))
      ),
      divModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneDiv], LaneDivParam(32, 0)), Seq(0, 1, 2, 3))
      ),
      divfpModuleParameters = Seq(),
      otherModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[OtherUnit], OtherUnitParam(32, 11, 6, 3, 4, 0)), Seq(0, 1, 2, 3))
      ),
      floatModuleParameters = Seq()
    )
  ).emit(targetDir)

  // horsea + fp
  @main def seadra(
    @arg(name = "target-dir", short = 't') targetDir: os.Path
  ): Unit = T1Parameter(
    vLen = 1024,
    dLen = 256,
    extensions = Seq("Zve32f"),
    // banks=2 dLen=256
    lsuBankParameters = Seq(
      BitSet(BitPat("b?????????????????????000??????")),
      BitSet(BitPat("b?????????????????????001??????")),
      BitSet(BitPat("b?????????????????????010??????")),
      BitSet(BitPat("b?????????????????????011??????")),
      BitSet(BitPat("b?????????????????????100??????")),
      BitSet(BitPat("b?????????????????????101??????")),
      BitSet(BitPat("b?????????????????????110??????")),
      BitSet(BitPat("b?????????????????????111??????")),
    ).map(bs => LSUBankParameter(bs, 4, false)),
    vrfBankSize = 4,
    vrfRamType = RamType.p0rw,
    vfuInstantiateParameter = VFUInstantiateParameter(
      slotCount = 4,
      logicModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[MaskedLogic], LogicParam(32, 0)), Seq(0, 1, 2, 3))
      ),
      aluModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(0)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(1)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(2)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(3))
      ),
      shifterModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneShifter], LaneShifterParameter(32, 0)), Seq(0, 1, 2, 3))
      ),
      mulModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneMul], LaneMulParam(32, 0)), Seq(0, 1, 2, 3))
      ),
      divModuleParameters = Seq(),
      divfpModuleParameters =
        Seq((SerializableModuleGenerator(classOf[LaneDivFP], LaneDivFPParam(32, 0)), Seq(0, 1, 2, 3))),
      otherModuleParameters =
        Seq((SerializableModuleGenerator(classOf[OtherUnit], OtherUnitParam(32, 11, 6, 3, 4, 0)), Seq(0, 1, 2, 3))),
      floatModuleParameters =
        Seq((SerializableModuleGenerator(classOf[LaneFloat], LaneFloatParam(32, 3)), Seq(0, 1, 2, 3)))
    )
  ).emit(targetDir)

  @main def mankey(
    @arg(name = "target-dir", short = 't') targetDir: os.Path
  ): Unit = T1Parameter(
    vLen = 2048,
    dLen = 512,
    extensions = Seq("Zve32x"),
    // banks=2 dLen=512
    lsuBankParameters = Seq(
      BitSet(BitPat("b????????????????????0000??????")),
      BitSet(BitPat("b????????????????????0001??????")),
      BitSet(BitPat("b????????????????????0010??????")),
      BitSet(BitPat("b????????????????????0011??????")),
      BitSet(BitPat("b????????????????????0100??????")),
      BitSet(BitPat("b????????????????????0101??????")),
      BitSet(BitPat("b????????????????????0110??????")),
      BitSet(BitPat("b????????????????????0111??????")),
      BitSet(BitPat("b????????????????????1000??????")),
      BitSet(BitPat("b????????????????????1001??????")),
      BitSet(BitPat("b????????????????????1010??????")),
      BitSet(BitPat("b????????????????????1011??????")),
      BitSet(BitPat("b????????????????????1100??????")),
      BitSet(BitPat("b????????????????????1101??????")),
      BitSet(BitPat("b????????????????????1110??????")),
      BitSet(BitPat("b????????????????????1111??????")),
    ).map(bs => LSUBankParameter(bs, 4, false)),
    vrfBankSize = 1,
    vrfRamType = RamType.p0rwp1rw,
    vfuInstantiateParameter = VFUInstantiateParameter(
      slotCount = 4,
      logicModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[MaskedLogic], LogicParam(32, 0)), Seq(0, 1, 2, 3))
      ),
      aluModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(0)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(1)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(2)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(3))
      ),
      shifterModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneShifter], LaneShifterParameter(32, 0)), Seq(0, 1, 2, 3))
      ),
      mulModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneMul], LaneMulParam(32, 0)), Seq(0, 1, 2, 3))
      ),
      divModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneDiv], LaneDivParam(32, 0)), Seq(0, 1, 2, 3))
      ),
      divfpModuleParameters = Seq(),
      otherModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[OtherUnit], OtherUnitParam(32, 11, 6, 4, 4, 0)), Seq(0, 1, 2, 3))
      ),
      floatModuleParameters = Seq()
    )
  ).emit(targetDir)

  // mankey + fp
  @main def primeape(
    @arg(name = "target-dir", short = 't') targetDir: os.Path
  ): Unit = T1Parameter(
    vLen = 4096,
    dLen = 512,
    extensions = Seq("Zve32f"),
    // banks=16 dLen=512
    lsuBankParameters = Seq(
      BitSet(BitPat("b????????????????????0000??????")),
      BitSet(BitPat("b????????????????????0001??????")),
      BitSet(BitPat("b????????????????????0010??????")),
      BitSet(BitPat("b????????????????????0011??????")),
      BitSet(BitPat("b????????????????????0100??????")),
      BitSet(BitPat("b????????????????????0101??????")),
      BitSet(BitPat("b????????????????????0110??????")),
      BitSet(BitPat("b????????????????????0111??????")),
      BitSet(BitPat("b????????????????????1000??????")),
      BitSet(BitPat("b????????????????????1001??????")),
      BitSet(BitPat("b????????????????????1010??????")),
      BitSet(BitPat("b????????????????????1011??????")),
      BitSet(BitPat("b????????????????????1100??????")),
      BitSet(BitPat("b????????????????????1101??????")),
      BitSet(BitPat("b????????????????????1110??????")),
      BitSet(BitPat("b????????????????????1111??????")),
    ).map(bs => LSUBankParameter(bs, 4, false)),
    vrfBankSize = 1,
    vrfRamType = RamType.p0rwp1rw,
    vfuInstantiateParameter = VFUInstantiateParameter(
      slotCount = 4,
      logicModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[MaskedLogic], LogicParam(32, 0)), Seq(0, 1, 2, 3))
      ),
      aluModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(0)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(1)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(2)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(3))
      ),
      shifterModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneShifter], LaneShifterParameter(32, 0)), Seq(0, 1, 2, 3))
      ),
      mulModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneMul], LaneMulParam(32, 0)), Seq(0, 1, 2, 3))
      ),
      divModuleParameters = Seq(),
      divfpModuleParameters =
        Seq((SerializableModuleGenerator(classOf[LaneDivFP], LaneDivFPParam(32, 0)), Seq(0, 1, 2, 3))),
      otherModuleParameters =
        Seq((SerializableModuleGenerator(classOf[OtherUnit], OtherUnitParam(32, 11, 6, 4, 4, 0)), Seq(0, 1, 2, 3))),
      floatModuleParameters =
        Seq((SerializableModuleGenerator(classOf[LaneFloat], LaneFloatParam(32, 3)), Seq(0, 1, 2, 3)))
    )
  ).emit(targetDir)

  @main def psyduck(
    @arg(name = "target-dir", short = 't') targetDir: os.Path
  ): Unit = T1Parameter(
    vLen = 4096,
    dLen = 256,
    extensions = Seq("Zve32x"),
    // banks=8 dLen=256
    lsuBankParameters = Seq(
      BitSet(BitPat("b?????????????????????000??????")),
      BitSet(BitPat("b?????????????????????001??????")),
      BitSet(BitPat("b?????????????????????010??????")),
      BitSet(BitPat("b?????????????????????011??????")),
      BitSet(BitPat("b?????????????????????100??????")),
      BitSet(BitPat("b?????????????????????101??????")),
      BitSet(BitPat("b?????????????????????110??????")),
      BitSet(BitPat("b?????????????????????111??????")),
    ).map(bs => LSUBankParameter(bs, 4, false)),
    vrfBankSize = 1,
    vrfRamType = RamType.p0rwp1rw,
    vfuInstantiateParameter = VFUInstantiateParameter(
      slotCount = 4,
      logicModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[MaskedLogic], LogicParam(32, 0)), Seq(0, 1, 2, 3))
      ),
      aluModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(0)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(1)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(2)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(3))
      ),
      shifterModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneShifter], LaneShifterParameter(32, 0)), Seq(0, 1, 2, 3))
      ),
      mulModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneMul], LaneMulParam(32, 0)), Seq(0, 1, 2, 3))
      ),
      divModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneDiv], LaneDivParam(32, 0)), Seq(0, 1, 2, 3))
      ),
      divfpModuleParameters = Seq(),
      // todo: 8 = ?
      otherModuleParameters =
        Seq((SerializableModuleGenerator(classOf[OtherUnit], OtherUnitParam(32, 11, 8, 3, 4, 0)), Seq(0, 1, 2, 3))),
      floatModuleParameters = Seq()
    )
  ).emit(targetDir)

  @main def golduck(
    @arg(name = "target-dir", short = 't') targetDir: os.Path
  ): Unit = T1Parameter(
    vLen = 4096,
    dLen = 256,
    extensions = Seq("Zve32f"),
    // banks=8 dLen=256
    lsuBankParameters = Seq(
      BitSet(BitPat("b?????????????????????000??????")),
      BitSet(BitPat("b?????????????????????001??????")),
      BitSet(BitPat("b?????????????????????010??????")),
      BitSet(BitPat("b?????????????????????011??????")),
      BitSet(BitPat("b?????????????????????100??????")),
      BitSet(BitPat("b?????????????????????101??????")),
      BitSet(BitPat("b?????????????????????110??????")),
      BitSet(BitPat("b?????????????????????111??????")),
    ).map(bs => LSUBankParameter(bs, 4, false)),
    vrfBankSize = 1,
    vrfRamType = RamType.p0rwp1rw,
    vfuInstantiateParameter = VFUInstantiateParameter(
      slotCount = 4,
      logicModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[MaskedLogic], LogicParam(32, 0)), Seq(0, 1, 2, 3))
      ),
      aluModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(0)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(1)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(2)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(3))
      ),
      shifterModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneShifter], LaneShifterParameter(32, 0)), Seq(0, 1, 2, 3))
      ),
      mulModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneMul], LaneMulParam(32, 0)), Seq(0, 1, 2, 3))
      ),
      divModuleParameters = Seq(),
      divfpModuleParameters =
        Seq((SerializableModuleGenerator(classOf[LaneDivFP], LaneDivFPParam(32, 0)), Seq(0, 1, 2, 3))),
      otherModuleParameters =
        Seq((SerializableModuleGenerator(classOf[OtherUnit], OtherUnitParam(32, 11, 8, 3, 4, 0)), Seq(0, 1, 2, 3))),
      floatModuleParameters =
        Seq((SerializableModuleGenerator(classOf[LaneFloat], LaneFloatParam(32, 3)), Seq(0, 1, 2, 3)))
    )
  ).emit(targetDir)

  @main def magnemite(
    @arg(name = "target-dir", short = 't') targetDir: os.Path
  ): Unit = T1Parameter(
    vLen = 4096,
    dLen = 1024,
    extensions = Seq("Zve32x"),
    // banks=32 dLen=1024
    lsuBankParameters = Seq(
      BitSet(BitPat("b???????????????????00000??????")),
      BitSet(BitPat("b???????????????????00001??????")),
      BitSet(BitPat("b???????????????????00010??????")),
      BitSet(BitPat("b???????????????????00011??????")),
      BitSet(BitPat("b???????????????????00100??????")),
      BitSet(BitPat("b???????????????????00101??????")),
      BitSet(BitPat("b???????????????????00110??????")),
      BitSet(BitPat("b???????????????????00111??????")),
      BitSet(BitPat("b???????????????????01000??????")),
      BitSet(BitPat("b???????????????????01001??????")),
      BitSet(BitPat("b???????????????????01010??????")),
      BitSet(BitPat("b???????????????????01011??????")),
      BitSet(BitPat("b???????????????????01100??????")),
      BitSet(BitPat("b???????????????????01101??????")),
      BitSet(BitPat("b???????????????????01110??????")),
      BitSet(BitPat("b???????????????????01111??????")),
      BitSet(BitPat("b???????????????????10000??????")),
      BitSet(BitPat("b???????????????????10001??????")),
      BitSet(BitPat("b???????????????????10010??????")),
      BitSet(BitPat("b???????????????????10011??????")),
      BitSet(BitPat("b???????????????????10100??????")),
      BitSet(BitPat("b???????????????????10101??????")),
      BitSet(BitPat("b???????????????????10110??????")),
      BitSet(BitPat("b???????????????????10111??????")),
      BitSet(BitPat("b???????????????????11000??????")),
      BitSet(BitPat("b???????????????????11001??????")),
      BitSet(BitPat("b???????????????????11010??????")),
      BitSet(BitPat("b???????????????????11011??????")),
      BitSet(BitPat("b???????????????????11100??????")),
      BitSet(BitPat("b???????????????????11101??????")),
      BitSet(BitPat("b???????????????????11110??????")),
      BitSet(BitPat("b???????????????????11111??????")),
    ).map(bs => LSUBankParameter(bs, 4, false)),
    vrfBankSize = 1,
    vrfRamType = RamType.p0rwp1rw,
    vfuInstantiateParameter = VFUInstantiateParameter(
      slotCount = 4,
      logicModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[MaskedLogic], LogicParam(32, 0)), Seq(0, 1, 2, 3))
      ),
      aluModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(0)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(1)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(2)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(3))
      ),
      shifterModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneShifter], LaneShifterParameter(32, 0)), Seq(0, 1, 2, 3))
      ),
      mulModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneMul], LaneMulParam(32, 0)), Seq(0, 1, 2, 3))
      ),
      divModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneDiv], LaneDivParam(32, 0)), Seq(0, 1, 2, 3))
      ),
      divfpModuleParameters = Seq(),
      otherModuleParameters =
        Seq((SerializableModuleGenerator(classOf[OtherUnit], OtherUnitParam(32, 11, 6, 3, 4, 0)), Seq(0, 1, 2, 3))),
      floatModuleParameters = Seq()
    )
  ).emit(targetDir)

  @main def magneton(
    @arg(name = "target-dir", short = 't') targetDir: os.Path
  ): Unit = T1Parameter(
    vLen = 4096,
    dLen = 1024,
    extensions = Seq("Zve32f"),
    // banks=32 dLen=1024
    lsuBankParameters = Seq(
      BitSet(BitPat("b???????????????????00000??????")),
      BitSet(BitPat("b???????????????????00001??????")),
      BitSet(BitPat("b???????????????????00010??????")),
      BitSet(BitPat("b???????????????????00011??????")),
      BitSet(BitPat("b???????????????????00100??????")),
      BitSet(BitPat("b???????????????????00101??????")),
      BitSet(BitPat("b???????????????????00110??????")),
      BitSet(BitPat("b???????????????????00111??????")),
      BitSet(BitPat("b???????????????????01000??????")),
      BitSet(BitPat("b???????????????????01001??????")),
      BitSet(BitPat("b???????????????????01010??????")),
      BitSet(BitPat("b???????????????????01011??????")),
      BitSet(BitPat("b???????????????????01100??????")),
      BitSet(BitPat("b???????????????????01101??????")),
      BitSet(BitPat("b???????????????????01110??????")),
      BitSet(BitPat("b???????????????????01111??????")),
      BitSet(BitPat("b???????????????????10000??????")),
      BitSet(BitPat("b???????????????????10001??????")),
      BitSet(BitPat("b???????????????????10010??????")),
      BitSet(BitPat("b???????????????????10011??????")),
      BitSet(BitPat("b???????????????????10100??????")),
      BitSet(BitPat("b???????????????????10101??????")),
      BitSet(BitPat("b???????????????????10110??????")),
      BitSet(BitPat("b???????????????????10111??????")),
      BitSet(BitPat("b???????????????????11000??????")),
      BitSet(BitPat("b???????????????????11001??????")),
      BitSet(BitPat("b???????????????????11010??????")),
      BitSet(BitPat("b???????????????????11011??????")),
      BitSet(BitPat("b???????????????????11100??????")),
      BitSet(BitPat("b???????????????????11101??????")),
      BitSet(BitPat("b???????????????????11110??????")),
      BitSet(BitPat("b???????????????????11111??????")),
    ).map(bs => LSUBankParameter(bs, 4, false)),
    vrfBankSize = 1,
    vrfRamType = RamType.p0rwp1rw,
    vfuInstantiateParameter = VFUInstantiateParameter(
      slotCount = 4,
      logicModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[MaskedLogic], LogicParam(32, 0)), Seq(0, 1, 2, 3))
      ),
      aluModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(0)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(1)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(2)),
        (SerializableModuleGenerator(classOf[LaneAdder], LaneAdderParam(32, 0)), Seq(3))
      ),
      shifterModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneShifter], LaneShifterParameter(32, 0)), Seq(0, 1, 2, 3))
      ),
      mulModuleParameters = Seq(
        (SerializableModuleGenerator(classOf[LaneMul], LaneMulParam(32, 0)), Seq(0, 1, 2, 3))
      ),
      divModuleParameters = Seq(),
      divfpModuleParameters =
        Seq((SerializableModuleGenerator(classOf[LaneDivFP], LaneDivFPParam(32, 0)), Seq(0, 1, 2, 3))),
      otherModuleParameters =
        Seq((SerializableModuleGenerator(classOf[OtherUnit], OtherUnitParam(32, 11, 6, 3, 4, 0)), Seq(0, 1, 2, 3))),
      floatModuleParameters =
        Seq((SerializableModuleGenerator(classOf[LaneFloat], LaneFloatParam(32, 3)), Seq(0, 1, 2, 3)))
    )
  ).emit(targetDir)

  def main(args: Array[String]): Unit = ParserForMethods(this).runOrExit(args)
}
