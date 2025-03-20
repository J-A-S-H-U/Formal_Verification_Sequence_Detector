module assertions (detect, in, clk, rst, current, next);
input detect;
input in;
input clk;
input rst;
input current;
input next;


default clocking 
@(posedge clk);
endclocking

property stable_current;
	disable iff(!rst) !($isunknown(current));
endproperty

property stable_detect;
	disable iff(!rst) !($isunknown(detect));
endproperty

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
property s0_t;
	disable iff(!rst) (current == S0 && in == 0) |=> (current == S0 && detect == 0);
endproperty

property s0_f;
	disable iff(!rst) (current == S0 && in == 1) |=> (current == C0 && detect == 0);
endproperty
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////



property c0_t;
	disable iff(!rst) (current == C0 && in == 0) |=> (current == S0 && detect == 0);
endproperty

property c0_f;
	disable iff(!rst) (current == C0 && in == 1) |=> (current == S1 && detect == 0);
endproperty
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



property s1_t;
	disable iff(!rst) (current == S1 && in == 0) |=> (current == C1 && detect == 0);
endproperty

property s1_f;
	disable iff(!rst) (current == S1 && in == 1) |=> (current == C0 && detect == 0);
endproperty
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



property c1_t;
	disable iff(!rst) (current == C1 && in == 0) |=> (current == S2 && detect == 0);
endproperty

property c1_f;
	disable iff(!rst) (current == C1 && in == 1) |=> (current == S1 && detect == 0);
endproperty
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



property s2_t;
	disable iff(!rst) (current == S2 && in == 0) |=> (current == C2 && detect == 0);
endproperty

property s2_f;
	disable iff(!rst) (current == S2 && in == 1) |=> (current == C0 && detect == 0);
endproperty
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////




property c2_t;
	disable iff(!rst) (current == C2 && in == 0) |=> (current == S3 && detect == 0);
endproperty

property c2_f;
	disable iff(!rst) (current == C2 && in == 1) |=> (current == S2 && detect == 0);
endproperty
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



property s3_t;
	disable iff(!rst) (current == S3 && in == 0) |=> (current == PRE_DEC && detect == 0);
endproperty

property s3_f;
	disable iff(!rst) (current == S3 && in == 1) |=> (current == C3 && detect == 0);
endproperty
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


property c3_t;
	disable iff(!rst) (current == C3 && in == 0) |=> (current == S3 && detect == 0);
endproperty

property c3_f;
	disable iff(!rst) (current == C3 && in == 1) |=> (current == S4 && detect == 0);
endproperty
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


property s4_t;
	disable iff(!rst) (current == S4 && in == 0) |=> (current == C4 && detect == 0);
endproperty

property s4_f;
	disable iff(!rst) (current == S4 && in == 1) |=> (current == C0 && detect == 0);
endproperty
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


property c4_t;
	disable iff(!rst) (current == C4 && in == 0) |=> (current == S5 && detect == 0);
endproperty

property c4_f;
	disable iff(!rst) (current == C4 && in == 1) |=> (current == S4 && detect == 0);
endproperty
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


property s5_t;
	disable iff(!rst) (current == S5 && in == 0) |=> (current == C5 && detect == 0);
endproperty

property s5_f;
	disable iff(!rst) (current == S5 && in == 1) |=> (current == C0 && detect == 0);
endproperty
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


property c5_t;
	disable iff(!rst) (current == C5 && in == 0) |=> (current == S6 && detect == 0);
endproperty

property c5_f;
	disable iff(!rst) (current == C5 && in == 1) |=> (current == S5 && detect == 0);
endproperty
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


property s6_t;
	disable iff(!rst) (current == S6 && in == 0) |=> (current == S0 && detect == 0);
endproperty

property s6_f;
	disable iff(!rst) (current == S6 && in == 1) |=> (current == C6 && detect == 0);
endproperty
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


property c6_t;
	disable iff(!rst) (current == C6 && in == 0) |=> (current == S6 && detect == 0);
endproperty

property c6_f;
	disable iff(!rst) (current == C6 && in == 1) |=> (current == S7 && detect == 0);
endproperty
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


property s7_t;
	disable iff(!rst) (current == S7 && in == 0) |=> (current == C4 && detect == 0);
endproperty

property s7_f;
	disable iff(!rst) (current == S7 && in == 1) |=> (current == C7 && detect == 0);
endproperty
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


property c7_t;
	disable iff(!rst) (current == C7 && in == 0) |=> (current == S7 && detect == 0);
endproperty

property c7_f;
	disable iff(!rst) (current == C7 && in == 1) |=> (current == S8 && detect == 0);
endproperty
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


property s8_t;
	disable iff(!rst) (current == S8 && in == 0) |=> (current == C8 && detect == 0);
endproperty

property s8_f;
	disable iff(!rst) (current == S8 && in == 1) |=> (current == C0 && detect == 0);
endproperty
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


property c8_t;
	disable iff(!rst) (current == C8 && in == 0) |=> (current == S9 && detect == 0);
endproperty

property c8_f;
	disable iff(!rst) (current == C8 && in == 1) |=> (current == S8 && detect == 0);
endproperty
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


property s9_t;
	disable iff(!rst) (current == S9 && in == 0) |=> (current == C9 && detect == 0);
endproperty

property s9_f;
	disable iff(!rst) (current == S9 && in == 1) |=> (current == C0 && detect == 0);
endproperty
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


property c9_t;
	disable iff(!rst) (current == C9 && in == 0) |=> (current == S10 && detect == 0);
endproperty

property c9_f;
	disable iff(!rst) (current == C9 && in == 1) |=> (current == S9 && detect == 0);
endproperty
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


property s10_t;
	disable iff(!rst) (current == S10 && in == 0) |=> (current == S0 && detect == 0);
endproperty

property s10_f;
	disable iff(!rst) (current == S10 && in == 1) |=> (current == C10 && detect == 0);
endproperty
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


property c10_t;
	disable iff(!rst) (current == C10 && in == 0) |=> (current == S10 && detect == 0);
endproperty

property c10_f;
	disable iff(!rst) (current == C10 && in == 1) |=> (current == S11 && detect == 0);
endproperty
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


property s11_t;
	disable iff(!rst) (current == S11 && in == 0) |=> (current == C4 && detect == 0);
endproperty

property s11_f;
	disable iff(!rst) (current == S11 && in == 1) |=> (current == C11 && detect == 0);
endproperty
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


property c11_t;
	disable iff(!rst) (current == C11 && in == 0) |=> (current == S11 && detect == 0);
endproperty

property c11_f;
	disable iff(!rst) (current == C11 && in == 1) |=> (current == S12 && detect == 1);
endproperty
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


property s12_t;
	disable iff(!rst) (current == S12 && in == 0) |=> (current == C1 && detect == 0);
endproperty

property s12_f;
	disable iff(!rst) (current == S12 && in == 1) |=> (current == C0 && detect == 0);
endproperty
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


property PRE_DEC_t;
	disable iff(!rst) (current == PRE_DEC && in == 0) |=> (current == DEC && detect == 0);
endproperty

property PRE_DEC_f;
	disable iff(!rst) (current == PRE_DEC && in == 1) |=> (current == S3 && detect == 0);
endproperty
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


property DEC_t;
	disable iff(!rst) (current == DEC && in == 0) |=> (current == PRE_ISO && detect == 0);
endproperty

property DEC_f;
	disable iff(!rst) (current == DEC && in == 1) |=> (current == PRE_DL && detect == 0);
endproperty
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


property PRE_ISO_t;
	disable iff(!rst) (current == PRE_ISO && in == 0) |=> (current == ISO && detect == 0);
endproperty

property PRE_ISO_f;
	disable iff(!rst) (current == PRE_ISO && in == 1) |=> (current == DEC && detect == 0);
endproperty
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


property PRE_DL_t;
	disable iff(!rst) (current == PRE_DL && in == 0) |=> (current == DEC && detect == 0);
endproperty

property PRE_DL_f;
	disable iff(!rst) (current == PRE_DL && in == 1) |=> (current == DL && detect == 0);
endproperty
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



property ISO_p;
	disable iff(!rst) (current == ISO && (in == 0 || in == 1)) |=> (current == ISO && detect == 0);
endproperty

property DL_p;
	disable iff(!rst) (current == DL && (in == 0 || in == 1)) |=> (current == DL && detect == 0);
endproperty
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



property detect_p;
	disable iff(!rst) (current == S12) |-> (detect == 1);
endproperty

property no_detect;
	disable iff(!rst) (current != S12) |-> (detect == 0);
endproperty
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////




a_current_stable: assert property (stable_current) else $display("ASSERTION FAIL STABLE_CURRENT");
a_current_detect: assert property (stable_detect) else $display("ASSERTION FAIL STABLE_DETECT");
a_s0_t: assert property(s0_t) else $display("ASSERTION FAIL S0_T");
a_s0_f: assert property(s0_f) else $display("ASSERTION FAIL S0_F");
a_s1_t: assert property(s1_t) else $display("ASSERTION FAIL S1_T");
a_s1_f: assert property(s1_f) else $display("ASSERTION FAIL S1_F");
a_s2_t: assert property(s2_t) else $display("ASSERTION FAIL S2_T");
a_s2_f: assert property(s2_f) else $display("ASSERTION FAIL S2_F");
a_s3_t: assert property(s3_t) else $display("ASSERTION FAIL S3_T");
a_s3_f: assert property(s3_f) else $display("ASSERTION FAIL S3_F");
a_s4_t: assert property(s4_t) else $display("ASSERTION FAIL S4_T");
a_s4_f: assert property(s4_f) else $display("ASSERTION FAIL S4_F");
a_s5_t: assert property(s5_t) else $display("ASSERTION FAIL S5_T");
a_s5_f: assert property(s5_f) else $display("ASSERTION FAIL S5_F");
a_s6_t: assert property(s6_t) else $display("ASSERTION FAIL S6_T");
a_s6_f: assert property(s6_f) else $display("ASSERTION FAIL S6_F");
a_s7_t: assert property(s7_t) else $display("ASSERTION FAIL S7_T");
a_s7_f: assert property(s7_f) else $display("ASSERTION FAIL S7_F");
a_s8_t: assert property(s8_t) else $display("ASSERTION FAIL S8_T");
a_s8_f: assert property(s8_f) else $display("ASSERTION FAIL S8_F");
a_s9_t: assert property(s9_t) else $display("ASSERTION FAIL S9_T");
a_s9_f: assert property(s9_f) else $display("ASSERTION FAIL S9_F");
a_s10_t: assert property(s10_t) else $display("ASSERTION FAIL S10_T");
a_s10_f: assert property(s10_f) else $display("ASSERTION FAIL S10_F");
a_s11_t: assert property(s11_t) else $display("ASSERTION FAIL S11_T");
a_s11_f: assert property(s11_f) else $display("ASSERTION FAIL S11_F");
a_s12_t: assert property(s12_t) else $display("ASSERTION FAIL S12_T");
a_s12_f: assert property(s12_f) else $display("ASSERTION FAIL S12_F");

a_c0_t: assert property(c0_t) else $display("ASSERTION FAIL C0_T");
a_c0_f: assert property(c0_f) else $display("ASSERTION FAIL C0_F");
a_c1_t: assert property(c1_t) else $display("ASSERTION FAIL C1_T");
a_c1_f: assert property(c1_f) else $display("ASSERTION FAIL C1_F");
a_c2_t: assert property(c2_t) else $display("ASSERTION FAIL C2_T");
a_c2_f: assert property(c2_f) else $display("ASSERTION FAIL C2_F");
a_c3_t: assert property(c3_t) else $display("ASSERTION FAIL C3_T");
a_c3_f: assert property(c3_f) else $display("ASSERTION FAIL C3_F");
a_c4_t: assert property(c4_t) else $display("ASSERTION FAIL C4_T");
a_c4_f: assert property(c4_f) else $display("ASSERTION FAIL C4_F");
a_c5_t: assert property(c5_t) else $display("ASSERTION FAIL C5_T");
a_c5_f: assert property(c5_f) else $display("ASSERTION FAIL C5_F");
a_c6_t: assert property(c6_t) else $display("ASSERTION FAIL C6_T");
a_c6_f: assert property(c6_f) else $display("ASSERTION FAIL C6_F");
a_c7_t: assert property(c7_t) else $display("ASSERTION FAIL C7_T");
a_c7_f: assert property(c7_f) else $display("ASSERTION FAIL C7_F");
a_c8_t: assert property(c8_t) else $display("ASSERTION FAIL C8_T");
a_c8_f: assert property(c8_f) else $display("ASSERTION FAIL C8_F");
a_c9_t: assert property(c9_t) else $display("ASSERTION FAIL C9_T");
a_c9_f: assert property(c9_f) else $display("ASSERTION FAIL C9_F");
a_c10_t: assert property(c10_t) else $display("ASSERTION FAIL C10_T");
a_c10_f: assert property(c10_f) else $display("ASSERTION FAIL C10_F");
a_c11_t: assert property(c11_t) else $display("ASSERTION FAIL C11_T");
a_c11_f: assert property(c11_f) else $display("ASSERTION FAIL C11_F");

a_PRE_DEC_t: assert property(PRE_DEC_t) else $display("ASSERTION FAIL PRE_DEC_T");
a_PRE_DEC_f: assert property(PRE_DEC_f) else $display("ASSERTION FAIL PRE_DEC_F");
a_PRE_ISO_t: assert property(PRE_ISO_t) else $display("ASSERTION FAIL PRE_ISO_T");
a_PRE_ISO_f: assert property(PRE_ISO_f) else $display("ASSERTION FAIL PRE_ISO_F");
a_PRE_DL_t: assert property(PRE_DL_t) else $display("ASSERTION FAIL PRE_DL_T");
a_PRE_DL_f: assert property(PRE_DL_f) else $display("ASSERTION FAIL PRE_DL_F");
a_ISO_p: assert property(ISO) else $display("ASSERTION FAIL ISO");
a_DL_p: assert property(DL) else $display("ASSERTION FAIL DL");
a_detect_p: assert property(detect_p) else $display("ASSERTION FAIL DETECT");
a_no_detect: assert property(no_detect) else $display("ASSERTION FAIL NO DETECT");



C_current_stable: cover property(stable_current) $display("COVER STABLE_CURRENT");
C_current_detect: cover property(stable_detect)  $display("COVER  STABLE_DETECT");
C_s0_t: cover property(s0_t)  $display("COVER  S0_T");
C_s0_f: cover property(s0_f)  $display("COVER  S0_F");
C_s1_t: cover property(s1_t)  $display("COVER  S1_T");
C_s1_f: cover property(s1_f)  $display("COVER  S1_F");
C_s2_t: cover property(s2_t)  $display("COVER  S2_T");
C_s2_f: cover property(s2_f)  $display("COVER  S2_F");
C_s3_t: cover property(s3_t)  $display("COVER  S3_T");
C_s3_f: cover property(s3_f)  $display("COVER  S3_F");
C_s4_t: cover property(s4_t)  $display("COVER  S4_T");
C_s4_f: cover property(s4_f)  $display("COVER  S4_F");
C_s5_t: cover property(s5_t)  $display("COVER  S5_T");
C_s5_f: cover property(s5_f)  $display("COVER  S5_F");
C_s6_t: cover property(s6_t)  $display("COVER  S6_T");
C_s6_f: cover property(s6_f)  $display("COVER  S6_F");
C_s7_t: cover property(s7_t)  $display("COVER  S7_T");
C_s7_f: cover property(s7_f)  $display("COVER  S7_F");
C_s8_t: cover property(s8_t)  $display("COVER  S8_T");
C_s8_f: cover property(s8_f)  $display("COVER  S8_F");
C_s9_t: cover property(s9_t)  $display("COVER  S9_T");
C_s9_f: cover property(s9_f)  $display("COVER  S9_F");
C_s10_t: cover property(s10_t)  $display("COVER  S10_T");
C_s10_f: cover property(s10_f)  $display("COVER  S10_F");
C_s11_t: cover property(s11_t)  $display("COVER  S11_T");
C_s11_f: cover property(s11_f)  $display("COVER  S11_F");
C_s12_t: cover property(s12_t)  $display("COVER  S12_T");
C_s12_f: cover property(s12_f)  $display("COVER  S12_F");

C_c0_t: cover property(c0_t)  $display("COVER  C0_T");
C_c0_f: cover property(c0_f)  $display("COVER  C0_F");
C_c1_t: cover property(c1_t)  $display("COVER  C1_T");
C_c1_f: cover property(c1_f)  $display("COVER  C1_F");
C_c2_t: cover property(c2_t)  $display("COVER  C2_T");
C_c2_f: cover property(c2_f)  $display("COVER  C2_F");
C_c3_t: cover property(c3_t)  $display("COVER  C3_T");
C_c3_f: cover property(c3_f)  $display("COVER  C3_F");
C_c4_t: cover property(c4_t)  $display("COVER  C4_T");
C_c4_f: cover property(c4_f)  $display("COVER  C4_F");
C_c5_t: cover property(c5_t)  $display("COVER  C5_T");
C_c5_f: cover property(c5_f)  $display("COVER  C5_F");
C_c6_t: cover property(c6_t)  $display("COVER  C6_T");
C_c6_f: cover property(c6_f)  $display("COVER  C6_F");
C_c7_t: cover property(c7_t)  $display("COVER  C7_T");
C_c7_f: cover property(c7_f)  $display("COVER  C7_F");
C_c8_t: cover property(c8_t)  $display("COVER  C8_T");
C_c8_f: cover property(c8_f)  $display("COVER  C8_F");
C_c9_t: cover property(c9_t)  $display("COVER  C9_T");
C_c9_f: cover property(c9_f)  $display("COVER  C9_F");
C_c10_t: cover property(c10_t)  $display("COVER  C10_T");
C_c10_f: cover property(c10_f)  $display("COVER  C10_F");
C_c11_t: cover property(c11_t)  $display("COVER  C11_T");
C_c11_f: cover property(c11_f)  $display("COVER  C11_F");

C_PRE_DEC_t: cover property(PRE_DEC_t)  $display("COVER  PRE_DEC_T");
C_PRE_DEC_f: cover property(PRE_DEC_f)  $display("COVER  PRE_DEC_F");
C_PRE_ISO_t: cover property(PRE_ISO_t)  $display("COVER  PRE_ISO_T");
C_PRE_ISO_f: cover property(PRE_ISO_f)  $display("COVER  PRE_ISO_F");
C_PRE_DL_t: cover property(PRE_DL_t)  $display("COVER  PRE_DL_T");
C_PRE_DL_f: cover property(PRE_DL_f)  $display("COVER  PRE_DL_F");
C_ISO_p: cover property(ISO)  $display("COVER  ISO");
C_DL_p: cover property(DL)  $display("COVER  DL");
C_detect_p: cover property(detect_p)  $display("COVER  DETECT");
C_no_detect: cover property(no_detect)  $display("COVER  NO DETECT");



endmodule