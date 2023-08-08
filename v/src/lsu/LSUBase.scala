package v
import chisel3._
import chisel3.util._
import tilelink.{TLBundle, TLBundleParameter, TLChannelA, TLChannelAParameter, TLChannelDParameter}

trait LSUPublic {
  val lsuRequest: ValidIO[LSURequest]
  val status: MSHRStatus
  val offsetGroupMatch: UInt
  val offsetEEW: UInt
  /** signal to request offset in the pipeline, only assert for one cycle. */
  val requestOffset: Bool
}

abstract class LSUBase(param: MSHRParam) extends Module {
  // pipe request
  /** [[LSURequest]] from LSU
   * see [[LSU.request]]
   */
  val lsuRequest: ValidIO[LSURequest] = IO(Flipped(Valid(new LSURequest(param.datapathWidth))))

  /** request from LSU. */
  val lsuRequestReg: LSURequest = RegEnable(lsuRequest.bits, 0.U.asTypeOf(lsuRequest.bits), lsuRequest.valid)

  val nFiled: UInt = lsuRequest.bits.instructionInformation.nf +& 1.U
  val nFiledReg: UInt = RegEnable(nFiled, 0.U, lsuRequest.valid)

  // pipe csr
  /** the CSR interface from [[V]], latch them here.
   * TODO: merge to [[LSURequest]]
   */
  val csrInterface: CSRInterface = IO(Input(new CSRInterface(param.vlMaxBits)))

  /** latch CSR.
   * TODO: merge to [[lsuRequestReg]]
   */
  val csrInterfaceReg: CSRInterface = RegEnable(csrInterface, 0.U.asTypeOf(csrInterface), lsuRequest.valid)

  // handle mask

  /** mask from [[V]]
   * see [[LSU.maskInput]]
   */
  val maskInput: UInt = IO(Input(UInt(param.maskGroupWidth.W)))

  /** the address of the mask group in the [[V]].
   * see [[LSU.maskSelect]]
   */
  val maskSelect: ValidIO[UInt] = IO(Valid(UInt(param.maskGroupSizeBits.W)))

  /** register to latch mask */
  val maskReg: UInt = RegEnable(maskInput, 0.U(maskInput.getWidth.W), maskSelect.fire || lsuRequest.valid)
}
