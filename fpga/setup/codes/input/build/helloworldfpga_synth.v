/* Generated by Yosys 0.9+2406 (git sha1 ca763e6d, gcc 9.3.0-17ubuntu1~20.04 -fPIC -Os) */

(* top =  1  *)
(* src = "/storage/emulated/0/github/vaman/fpga/setup/codes/input/blink_ip.v:2.1-18.10" *)
module helloworldfpga(reset, blink, redled, blueled, greenled);
  wire _0_;
  wire _1_;
  (* src = "/storage/emulated/0/github/vaman/fpga/setup/codes/input/blink_ip.v:5.24-5.29" *)
  output blink;
  (* src = "/share/yosys/quicklogic/pp3_lut_map.v:28.63-28.99|/root/symbiflow/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:479.10-479.12" *)
  wire \blink_LUT1_O.I0 ;
  (* src = "/share/yosys/quicklogic/pp3_lut_map.v:28.63-28.99|/root/symbiflow/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:478.10-478.11" *)
  wire \blink_LUT1_O.O ;
  (* src = "/storage/emulated/0/github/vaman/fpga/setup/codes/input/blink_ip.v:7.24-7.31" *)
  output blueled;
  (* src = "/storage/emulated/0/github/vaman/fpga/setup/codes/input/blink_ip.v:8.24-8.32" *)
  output greenled;
  (* src = "/storage/emulated/0/github/vaman/fpga/setup/codes/input/blink_ip.v:6.24-6.30" *)
  output redled;
  (* src = "/storage/emulated/0/github/vaman/fpga/setup/codes/input/blink_ip.v:4.23-4.28" *)
  input reset;
  (* module_not_derived = 32'd1 *)
  (* src = "/root/symbiflow/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:81.9-88.8" *)
  BIDIR_CELL #(
    .DS(1'h0),
    .ESEL(1'h1),
    .FIXHOLD(1'h0),
    .OSEL(1'h1),
    .WPD(1'h0)
  ) _2_ (
    .I_DAT(),
    .I_EN(1'h0),
    .\I_PAD_$inp (),
    .O_DAT(_0_),
    .O_EN(1'h1),
    .\O_PAD_$out (blink)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/root/symbiflow/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:81.9-88.8" *)
  BIDIR_CELL #(
    .DS(1'h0),
    .ESEL(1'h1),
    .FIXHOLD(1'h0),
    .OSEL(1'h1),
    .WPD(1'h0)
  ) _3_ (
    .I_DAT(),
    .I_EN(1'h0),
    .\I_PAD_$inp (),
    .O_DAT(_0_),
    .O_EN(1'h1),
    .\O_PAD_$out (blueled)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/root/symbiflow/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:81.9-88.8" *)
  BIDIR_CELL #(
    .DS(1'h0),
    .ESEL(1'h1),
    .FIXHOLD(1'h0),
    .OSEL(1'h1),
    .WPD(1'h0)
  ) _4_ (
    .I_DAT(),
    .I_EN(1'h0),
    .\I_PAD_$inp (),
    .O_DAT(1'h0),
    .O_EN(1'h1),
    .\O_PAD_$out (greenled)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/root/symbiflow/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:81.9-88.8" *)
  BIDIR_CELL #(
    .DS(1'h0),
    .ESEL(1'h1),
    .FIXHOLD(1'h0),
    .OSEL(1'h1),
    .WPD(1'h0)
  ) _5_ (
    .I_DAT(),
    .I_EN(1'h0),
    .\I_PAD_$inp (),
    .O_DAT(1'h0),
    .O_EN(1'h1),
    .\O_PAD_$out (redled)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/root/symbiflow/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:43.9-50.8" *)
  BIDIR_CELL #(
    .DS(1'h0),
    .ESEL(1'h1),
    .FIXHOLD(1'h0),
    .OSEL(1'h1),
    .WPD(1'h0)
  ) _6_ (
    .I_DAT(_1_),
    .I_EN(1'h1),
    .\I_PAD_$inp (reset),
    .O_DAT(),
    .O_EN(1'h0),
    .\O_PAD_$out ()
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/share/yosys/quicklogic/pp3_lut_map.v:28.63-28.99|/root/symbiflow/quicklogic-arch-defs/share/techmaps/quicklogic/pp3/techmap/cells_map.v:485.10-490.4" *)
  F_FRAG \blink_LUT1_O.f_frag  (
    .F1(1'h1),
    .F2(1'h0),
    .FS(_1_),
    .FZ(_0_)
  );
  assign \blink_LUT1_O.O  = 1'h0;
  assign \blink_LUT1_O.I0  = 1'h0;
endmodule