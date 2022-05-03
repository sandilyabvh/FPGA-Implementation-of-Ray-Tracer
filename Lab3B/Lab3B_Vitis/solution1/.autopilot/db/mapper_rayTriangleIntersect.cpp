#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
extern "C" void rayTriangleIntersect(int*, int*, int*, int*, int*, int, int, int, int, int);
extern "C" void apatb_rayTriangleIntersect_hw(volatile void * __xlx_apatb_param_dir_DRAM, volatile void * __xlx_apatb_param_P1_DRAM, volatile void * __xlx_apatb_param_P2_DRAM, volatile void * __xlx_apatb_param_P3_DRAM, volatile void * __xlx_apatb_param_intersectIndex) {
  // Collect __xlx_dir_DRAM__tmp_vec
  vector<sc_bv<32> >__xlx_dir_DRAM__tmp_vec;
  for (int j = 0, e = 3; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_dir_DRAM)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_dir_DRAM)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_dir_DRAM)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_dir_DRAM)[j*4+3];
    __xlx_dir_DRAM__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_dir_DRAM = 3;
  int __xlx_offset_param_dir_DRAM = 0;
  int __xlx_offset_byte_param_dir_DRAM = 0*4;
  int* __xlx_dir_DRAM__input_buffer= new int[__xlx_dir_DRAM__tmp_vec.size()];
  for (int i = 0; i < __xlx_dir_DRAM__tmp_vec.size(); ++i) {
    __xlx_dir_DRAM__input_buffer[i] = __xlx_dir_DRAM__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_P1_DRAM__tmp_vec
  vector<sc_bv<32> >__xlx_P1_DRAM__tmp_vec;
  for (int j = 0, e = 18960; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_P1_DRAM)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_P1_DRAM)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_P1_DRAM)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_P1_DRAM)[j*4+3];
    __xlx_P1_DRAM__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_P1_DRAM = 18960;
  int __xlx_offset_param_P1_DRAM = 0;
  int __xlx_offset_byte_param_P1_DRAM = 0*4;
  int* __xlx_P1_DRAM__input_buffer= new int[__xlx_P1_DRAM__tmp_vec.size()];
  for (int i = 0; i < __xlx_P1_DRAM__tmp_vec.size(); ++i) {
    __xlx_P1_DRAM__input_buffer[i] = __xlx_P1_DRAM__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_P2_DRAM__tmp_vec
  vector<sc_bv<32> >__xlx_P2_DRAM__tmp_vec;
  for (int j = 0, e = 18960; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_P2_DRAM)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_P2_DRAM)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_P2_DRAM)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_P2_DRAM)[j*4+3];
    __xlx_P2_DRAM__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_P2_DRAM = 18960;
  int __xlx_offset_param_P2_DRAM = 0;
  int __xlx_offset_byte_param_P2_DRAM = 0*4;
  int* __xlx_P2_DRAM__input_buffer= new int[__xlx_P2_DRAM__tmp_vec.size()];
  for (int i = 0; i < __xlx_P2_DRAM__tmp_vec.size(); ++i) {
    __xlx_P2_DRAM__input_buffer[i] = __xlx_P2_DRAM__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_P3_DRAM__tmp_vec
  vector<sc_bv<32> >__xlx_P3_DRAM__tmp_vec;
  for (int j = 0, e = 18960; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_P3_DRAM)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_P3_DRAM)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_P3_DRAM)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_P3_DRAM)[j*4+3];
    __xlx_P3_DRAM__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_P3_DRAM = 18960;
  int __xlx_offset_param_P3_DRAM = 0;
  int __xlx_offset_byte_param_P3_DRAM = 0*4;
  int* __xlx_P3_DRAM__input_buffer= new int[__xlx_P3_DRAM__tmp_vec.size()];
  for (int i = 0; i < __xlx_P3_DRAM__tmp_vec.size(); ++i) {
    __xlx_P3_DRAM__input_buffer[i] = __xlx_P3_DRAM__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_intersectIndex__tmp_vec
  vector<sc_bv<32> >__xlx_intersectIndex__tmp_vec;
  for (int j = 0, e = 2; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_intersectIndex)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_intersectIndex)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_intersectIndex)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_intersectIndex)[j*4+3];
    __xlx_intersectIndex__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_intersectIndex = 2;
  int __xlx_offset_param_intersectIndex = 0;
  int __xlx_offset_byte_param_intersectIndex = 0*4;
  int* __xlx_intersectIndex__input_buffer= new int[__xlx_intersectIndex__tmp_vec.size()];
  for (int i = 0; i < __xlx_intersectIndex__tmp_vec.size(); ++i) {
    __xlx_intersectIndex__input_buffer[i] = __xlx_intersectIndex__tmp_vec[i].range(31, 0).to_uint64();
  }
  // DUT call
  rayTriangleIntersect(__xlx_dir_DRAM__input_buffer, __xlx_P1_DRAM__input_buffer, __xlx_P2_DRAM__input_buffer, __xlx_P3_DRAM__input_buffer, __xlx_intersectIndex__input_buffer, __xlx_offset_byte_param_dir_DRAM, __xlx_offset_byte_param_P1_DRAM, __xlx_offset_byte_param_P2_DRAM, __xlx_offset_byte_param_P3_DRAM, __xlx_offset_byte_param_intersectIndex);
// print __xlx_apatb_param_dir_DRAM
  sc_bv<32>*__xlx_dir_DRAM_output_buffer = new sc_bv<32>[__xlx_size_param_dir_DRAM];
  for (int i = 0; i < __xlx_size_param_dir_DRAM; ++i) {
    __xlx_dir_DRAM_output_buffer[i] = __xlx_dir_DRAM__input_buffer[i+__xlx_offset_param_dir_DRAM];
  }
  for (int i = 0; i < __xlx_size_param_dir_DRAM; ++i) {
    ((char*)__xlx_apatb_param_dir_DRAM)[i*4+0] = __xlx_dir_DRAM_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_dir_DRAM)[i*4+1] = __xlx_dir_DRAM_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_dir_DRAM)[i*4+2] = __xlx_dir_DRAM_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_dir_DRAM)[i*4+3] = __xlx_dir_DRAM_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_P1_DRAM
  sc_bv<32>*__xlx_P1_DRAM_output_buffer = new sc_bv<32>[__xlx_size_param_P1_DRAM];
  for (int i = 0; i < __xlx_size_param_P1_DRAM; ++i) {
    __xlx_P1_DRAM_output_buffer[i] = __xlx_P1_DRAM__input_buffer[i+__xlx_offset_param_P1_DRAM];
  }
  for (int i = 0; i < __xlx_size_param_P1_DRAM; ++i) {
    ((char*)__xlx_apatb_param_P1_DRAM)[i*4+0] = __xlx_P1_DRAM_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_P1_DRAM)[i*4+1] = __xlx_P1_DRAM_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_P1_DRAM)[i*4+2] = __xlx_P1_DRAM_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_P1_DRAM)[i*4+3] = __xlx_P1_DRAM_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_P2_DRAM
  sc_bv<32>*__xlx_P2_DRAM_output_buffer = new sc_bv<32>[__xlx_size_param_P2_DRAM];
  for (int i = 0; i < __xlx_size_param_P2_DRAM; ++i) {
    __xlx_P2_DRAM_output_buffer[i] = __xlx_P2_DRAM__input_buffer[i+__xlx_offset_param_P2_DRAM];
  }
  for (int i = 0; i < __xlx_size_param_P2_DRAM; ++i) {
    ((char*)__xlx_apatb_param_P2_DRAM)[i*4+0] = __xlx_P2_DRAM_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_P2_DRAM)[i*4+1] = __xlx_P2_DRAM_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_P2_DRAM)[i*4+2] = __xlx_P2_DRAM_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_P2_DRAM)[i*4+3] = __xlx_P2_DRAM_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_P3_DRAM
  sc_bv<32>*__xlx_P3_DRAM_output_buffer = new sc_bv<32>[__xlx_size_param_P3_DRAM];
  for (int i = 0; i < __xlx_size_param_P3_DRAM; ++i) {
    __xlx_P3_DRAM_output_buffer[i] = __xlx_P3_DRAM__input_buffer[i+__xlx_offset_param_P3_DRAM];
  }
  for (int i = 0; i < __xlx_size_param_P3_DRAM; ++i) {
    ((char*)__xlx_apatb_param_P3_DRAM)[i*4+0] = __xlx_P3_DRAM_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_P3_DRAM)[i*4+1] = __xlx_P3_DRAM_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_P3_DRAM)[i*4+2] = __xlx_P3_DRAM_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_P3_DRAM)[i*4+3] = __xlx_P3_DRAM_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_intersectIndex
  sc_bv<32>*__xlx_intersectIndex_output_buffer = new sc_bv<32>[__xlx_size_param_intersectIndex];
  for (int i = 0; i < __xlx_size_param_intersectIndex; ++i) {
    __xlx_intersectIndex_output_buffer[i] = __xlx_intersectIndex__input_buffer[i+__xlx_offset_param_intersectIndex];
  }
  for (int i = 0; i < __xlx_size_param_intersectIndex; ++i) {
    ((char*)__xlx_apatb_param_intersectIndex)[i*4+0] = __xlx_intersectIndex_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_intersectIndex)[i*4+1] = __xlx_intersectIndex_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_intersectIndex)[i*4+2] = __xlx_intersectIndex_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_intersectIndex)[i*4+3] = __xlx_intersectIndex_output_buffer[i].range(31, 24).to_uint();
  }
}
