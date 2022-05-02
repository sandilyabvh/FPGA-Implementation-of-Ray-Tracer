#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_dir "../tv/cdatafile/c.rayTriangleIntersect.autotvin_dir.dat"
#define AUTOTB_TVOUT_dir "../tv/cdatafile/c.rayTriangleIntersect.autotvout_dir.dat"
// wrapc file define:
#define AUTOTB_TVIN_P1_DRAM "../tv/cdatafile/c.rayTriangleIntersect.autotvin_P1_DRAM.dat"
#define AUTOTB_TVOUT_P1_DRAM "../tv/cdatafile/c.rayTriangleIntersect.autotvout_P1_DRAM.dat"
// wrapc file define:
#define AUTOTB_TVIN_P2_DRAM "../tv/cdatafile/c.rayTriangleIntersect.autotvin_P2_DRAM.dat"
#define AUTOTB_TVOUT_P2_DRAM "../tv/cdatafile/c.rayTriangleIntersect.autotvout_P2_DRAM.dat"
// wrapc file define:
#define AUTOTB_TVIN_P3_DRAM "../tv/cdatafile/c.rayTriangleIntersect.autotvin_P3_DRAM.dat"
#define AUTOTB_TVOUT_P3_DRAM "../tv/cdatafile/c.rayTriangleIntersect.autotvout_P3_DRAM.dat"
// wrapc file define:
#define AUTOTB_TVIN_intersectIndex "../tv/cdatafile/c.rayTriangleIntersect.autotvin_intersectIndex.dat"
#define AUTOTB_TVOUT_intersectIndex "../tv/cdatafile/c.rayTriangleIntersect.autotvout_intersectIndex.dat"
// wrapc file define:
#define AUTOTB_TVIN_dir_DRAM "../tv/cdatafile/c.rayTriangleIntersect.autotvin_dir_DRAM.dat"
#define AUTOTB_TVOUT_dir_DRAM "../tv/cdatafile/c.rayTriangleIntersect.autotvout_dir_DRAM.dat"
// wrapc file define:
#define AUTOTB_TVIN_P1_DRAM_offset "../tv/cdatafile/c.rayTriangleIntersect.autotvin_P1_DRAM_offset.dat"
#define AUTOTB_TVOUT_P1_DRAM_offset "../tv/cdatafile/c.rayTriangleIntersect.autotvout_P1_DRAM_offset.dat"
// wrapc file define:
#define AUTOTB_TVIN_P2_DRAM_offset "../tv/cdatafile/c.rayTriangleIntersect.autotvin_P2_DRAM_offset.dat"
#define AUTOTB_TVOUT_P2_DRAM_offset "../tv/cdatafile/c.rayTriangleIntersect.autotvout_P2_DRAM_offset.dat"
// wrapc file define:
#define AUTOTB_TVIN_P3_DRAM_offset "../tv/cdatafile/c.rayTriangleIntersect.autotvin_P3_DRAM_offset.dat"
#define AUTOTB_TVOUT_P3_DRAM_offset "../tv/cdatafile/c.rayTriangleIntersect.autotvout_P3_DRAM_offset.dat"
// wrapc file define:
#define AUTOTB_TVIN_intersectIndex_offset "../tv/cdatafile/c.rayTriangleIntersect.autotvin_intersectIndex_offset.dat"
#define AUTOTB_TVOUT_intersectIndex_offset "../tv/cdatafile/c.rayTriangleIntersect.autotvout_intersectIndex_offset.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_dir "../tv/rtldatafile/rtl.rayTriangleIntersect.autotvout_dir.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_P1_DRAM "../tv/rtldatafile/rtl.rayTriangleIntersect.autotvout_P1_DRAM.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_P2_DRAM "../tv/rtldatafile/rtl.rayTriangleIntersect.autotvout_P2_DRAM.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_P3_DRAM "../tv/rtldatafile/rtl.rayTriangleIntersect.autotvout_P3_DRAM.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_intersectIndex "../tv/rtldatafile/rtl.rayTriangleIntersect.autotvout_intersectIndex.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_dir_DRAM "../tv/rtldatafile/rtl.rayTriangleIntersect.autotvout_dir_DRAM.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_P1_DRAM_offset "../tv/rtldatafile/rtl.rayTriangleIntersect.autotvout_P1_DRAM_offset.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_P2_DRAM_offset "../tv/rtldatafile/rtl.rayTriangleIntersect.autotvout_P2_DRAM_offset.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_P3_DRAM_offset "../tv/rtldatafile/rtl.rayTriangleIntersect.autotvout_P3_DRAM_offset.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_intersectIndex_offset "../tv/rtldatafile/rtl.rayTriangleIntersect.autotvout_intersectIndex_offset.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  dir_depth = 0;
  P1_DRAM_depth = 0;
  P2_DRAM_depth = 0;
  P3_DRAM_depth = 0;
  intersectIndex_depth = 0;
  dir_DRAM_depth = 0;
  P1_DRAM_offset_depth = 0;
  P2_DRAM_offset_depth = 0;
  P3_DRAM_offset_depth = 0;
  intersectIndex_offset_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{dir " << dir_depth << "}\n";
  total_list << "{P1_DRAM " << P1_DRAM_depth << "}\n";
  total_list << "{P2_DRAM " << P2_DRAM_depth << "}\n";
  total_list << "{P3_DRAM " << P3_DRAM_depth << "}\n";
  total_list << "{intersectIndex " << intersectIndex_depth << "}\n";
  total_list << "{dir_DRAM " << dir_DRAM_depth << "}\n";
  total_list << "{P1_DRAM_offset " << P1_DRAM_offset_depth << "}\n";
  total_list << "{P2_DRAM_offset " << P2_DRAM_offset_depth << "}\n";
  total_list << "{P3_DRAM_offset " << P3_DRAM_offset_depth << "}\n";
  total_list << "{intersectIndex_offset " << intersectIndex_offset_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int dir_depth;
    int P1_DRAM_depth;
    int P2_DRAM_depth;
    int P3_DRAM_depth;
    int intersectIndex_depth;
    int dir_DRAM_depth;
    int P1_DRAM_offset_depth;
    int P2_DRAM_offset_depth;
    int P3_DRAM_offset_depth;
    int intersectIndex_offset_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
extern "C" void rayTriangleIntersect_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_rayTriangleIntersect_hw(volatile void * __xlx_apatb_param_dir_DRAM, volatile void * __xlx_apatb_param_P1_DRAM, volatile void * __xlx_apatb_param_P2_DRAM, volatile void * __xlx_apatb_param_P3_DRAM, volatile void * __xlx_apatb_param_intersectIndex) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_intersectIndex);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > intersectIndex_pc_buffer(2);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "intersectIndex");
  
            // push token into output port buffer
            if (AESL_token != "") {
              intersectIndex_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 2; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_intersectIndex)[j*4+0] = intersectIndex_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_intersectIndex)[j*4+1] = intersectIndex_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_intersectIndex)[j*4+2] = intersectIndex_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_intersectIndex)[j*4+3] = intersectIndex_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//dir
aesl_fh.touch(AUTOTB_TVIN_dir);
aesl_fh.touch(AUTOTB_TVOUT_dir);
//P1_DRAM
aesl_fh.touch(AUTOTB_TVIN_P1_DRAM);
aesl_fh.touch(AUTOTB_TVOUT_P1_DRAM);
//P2_DRAM
aesl_fh.touch(AUTOTB_TVIN_P2_DRAM);
aesl_fh.touch(AUTOTB_TVOUT_P2_DRAM);
//P3_DRAM
aesl_fh.touch(AUTOTB_TVIN_P3_DRAM);
aesl_fh.touch(AUTOTB_TVOUT_P3_DRAM);
//intersectIndex
aesl_fh.touch(AUTOTB_TVIN_intersectIndex);
aesl_fh.touch(AUTOTB_TVOUT_intersectIndex);
//dir_DRAM
aesl_fh.touch(AUTOTB_TVIN_dir_DRAM);
aesl_fh.touch(AUTOTB_TVOUT_dir_DRAM);
//P1_DRAM_offset
aesl_fh.touch(AUTOTB_TVIN_P1_DRAM_offset);
aesl_fh.touch(AUTOTB_TVOUT_P1_DRAM_offset);
//P2_DRAM_offset
aesl_fh.touch(AUTOTB_TVIN_P2_DRAM_offset);
aesl_fh.touch(AUTOTB_TVOUT_P2_DRAM_offset);
//P3_DRAM_offset
aesl_fh.touch(AUTOTB_TVIN_P3_DRAM_offset);
aesl_fh.touch(AUTOTB_TVOUT_P3_DRAM_offset);
//intersectIndex_offset
aesl_fh.touch(AUTOTB_TVIN_intersectIndex_offset);
aesl_fh.touch(AUTOTB_TVOUT_intersectIndex_offset);
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_dir_DRAM = 0;
// print dir Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_dir, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_dir_DRAM = 0*4;
  if (__xlx_apatb_param_dir_DRAM) {
    for (int j = 0  - 0, e = 3 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_dir_DRAM)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_dir, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(3, &tcl_file.dir_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_dir, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_P1_DRAM = 0;
// print P1_DRAM Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_P1_DRAM, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_P1_DRAM = 0*4;
  if (__xlx_apatb_param_P1_DRAM) {
    for (int j = 0  - 0, e = 18960 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_P1_DRAM)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_P1_DRAM, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(18960, &tcl_file.P1_DRAM_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_P1_DRAM, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_P2_DRAM = 0;
// print P2_DRAM Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_P2_DRAM, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_P2_DRAM = 0*4;
  if (__xlx_apatb_param_P2_DRAM) {
    for (int j = 0  - 0, e = 18960 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_P2_DRAM)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_P2_DRAM, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(18960, &tcl_file.P2_DRAM_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_P2_DRAM, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_P3_DRAM = 0;
// print P3_DRAM Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_P3_DRAM, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_P3_DRAM = 0*4;
  if (__xlx_apatb_param_P3_DRAM) {
    for (int j = 0  - 0, e = 18960 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_P3_DRAM)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_P3_DRAM, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(18960, &tcl_file.P3_DRAM_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_P3_DRAM, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_intersectIndex = 0;
// print intersectIndex Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_intersectIndex, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_intersectIndex = 0*4;
  if (__xlx_apatb_param_intersectIndex) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_intersectIndex)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_intersectIndex, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(2, &tcl_file.intersectIndex_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_intersectIndex, __xlx_sprintf_buffer.data());
}
// print dir_DRAM Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_dir_DRAM, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_dir_DRAM;

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_dir_DRAM, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.dir_DRAM_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_dir_DRAM, __xlx_sprintf_buffer.data());
}
// print P1_DRAM_offset Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_P1_DRAM_offset, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_P1_DRAM;

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_P1_DRAM_offset, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.P1_DRAM_offset_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_P1_DRAM_offset, __xlx_sprintf_buffer.data());
}
// print P2_DRAM_offset Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_P2_DRAM_offset, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_P2_DRAM;

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_P2_DRAM_offset, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.P2_DRAM_offset_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_P2_DRAM_offset, __xlx_sprintf_buffer.data());
}
// print P3_DRAM_offset Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_P3_DRAM_offset, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_P3_DRAM;

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_P3_DRAM_offset, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.P3_DRAM_offset_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_P3_DRAM_offset, __xlx_sprintf_buffer.data());
}
// print intersectIndex_offset Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_intersectIndex_offset, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_intersectIndex;

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_intersectIndex_offset, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.intersectIndex_offset_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_intersectIndex_offset, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
rayTriangleIntersect_hw_stub_wrapper(__xlx_apatb_param_dir_DRAM, __xlx_apatb_param_P1_DRAM, __xlx_apatb_param_P2_DRAM, __xlx_apatb_param_P3_DRAM, __xlx_apatb_param_intersectIndex);
CodeState = DUMP_OUTPUTS;
// print intersectIndex Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_intersectIndex, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_intersectIndex = 0*4;
  if (__xlx_apatb_param_intersectIndex) {
    for (int j = 0  - 0, e = 2 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_intersectIndex)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVOUT_intersectIndex, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(2, &tcl_file.intersectIndex_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_intersectIndex, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
