// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// Register Package auto-generated by `reggen` containing data structure

package cheshire_reg_pkg;

  // Address widths within the block
  parameter int BlockAw = 7;

  ////////////////////////////
  // Typedefs for registers //
  ////////////////////////////

  typedef struct packed {
    logic [1:0]  d;
  } cheshire_hw2reg_boot_mode_reg_t;

  typedef struct packed {
    logic [31:0] d;
  } cheshire_hw2reg_rtc_freq_reg_t;

  typedef struct packed {
    logic [31:0] d;
  } cheshire_hw2reg_platform_rom_reg_t;

  typedef struct packed {
    logic [31:0] d;
  } cheshire_hw2reg_num_int_harts_reg_t;

  typedef struct packed {
    struct packed {
      logic        d;
    } bootrom;
    struct packed {
      logic        d;
    } llc;
    struct packed {
      logic        d;
    } uart;
    struct packed {
      logic        d;
    } spi_host;
    struct packed {
      logic        d;
    } i2c;
    struct packed {
      logic        d;
    } gpio;
    struct packed {
      logic        d;
    } dma;
    struct packed {
      logic        d;
    } serial_link;
    struct packed {
      logic        d;
    } vga;
    struct packed {
      logic        d;
    } usb;
    struct packed {
      logic        d;
    } axirt;
    struct packed {
      logic        d;
    } clic;
    struct packed {
      logic        d;
    } irq_router;
    struct packed {
      logic        d;
    } bus_err;
  } cheshire_hw2reg_hw_features_reg_t;

  typedef struct packed {
    logic [31:0] d;
  } cheshire_hw2reg_llc_size_reg_t;

  typedef struct packed {
    logic [31:0] d;
  } cheshire_hw2reg_llc_hit_cnt_write_cache_reg_t;

  typedef struct packed {
    logic [31:0] d;
  } cheshire_hw2reg_llc_hit_cnt_read_cache_reg_t;

  typedef struct packed {
    logic [31:0] d;
  } cheshire_hw2reg_llc_miss_cnt_write_cache_reg_t;

  typedef struct packed {
    logic [31:0] d;
  } cheshire_hw2reg_llc_miss_cnt_read_cache_reg_t;

  typedef struct packed {
    logic [31:0] d;
  } cheshire_hw2reg_llc_refill_cnt_write_reg_t;

  typedef struct packed {
    logic [31:0] d;
  } cheshire_hw2reg_llc_refill_cnt_read_reg_t;

  typedef struct packed {
    logic [31:0] d;
  } cheshire_hw2reg_llc_evict_cnt_write_reg_t;

  typedef struct packed {
    logic [31:0] d;
  } cheshire_hw2reg_llc_evict_cnt_read_reg_t;

  typedef struct packed {
    struct packed {
      logic [7:0]  d;
    } red_width;
    struct packed {
      logic [7:0]  d;
    } green_width;
    struct packed {
      logic [7:0]  d;
    } blue_width;
  } cheshire_hw2reg_vga_params_reg_t;

  // HW -> register type
  typedef struct packed {
    cheshire_hw2reg_boot_mode_reg_t boot_mode; // [422:421]
    cheshire_hw2reg_rtc_freq_reg_t rtc_freq; // [420:389]
    cheshire_hw2reg_platform_rom_reg_t platform_rom; // [388:357]
    cheshire_hw2reg_num_int_harts_reg_t num_int_harts; // [356:325]
    cheshire_hw2reg_hw_features_reg_t hw_features; // [324:312]
    cheshire_hw2reg_llc_size_reg_t llc_size; // [311:280]
    cheshire_hw2reg_llc_hit_cnt_write_cache_reg_t llc_hit_cnt_write_cache; // [279:248]
    cheshire_hw2reg_llc_hit_cnt_read_cache_reg_t llc_hit_cnt_read_cache; // [247:216]
    cheshire_hw2reg_llc_miss_cnt_write_cache_reg_t llc_miss_cnt_write_cache; // [215:184]
    cheshire_hw2reg_llc_miss_cnt_read_cache_reg_t llc_miss_cnt_read_cache; // [183:152]
    cheshire_hw2reg_llc_refill_cnt_write_reg_t llc_refill_cnt_write; // [151:120]
    cheshire_hw2reg_llc_refill_cnt_read_reg_t llc_refill_cnt_read; // [119:88]
    cheshire_hw2reg_llc_evict_cnt_write_reg_t llc_evict_cnt_write; // [87:56]
    cheshire_hw2reg_llc_evict_cnt_read_reg_t llc_evict_cnt_read; // [55:24]
    cheshire_hw2reg_vga_params_reg_t vga_params; // [23:0]
  } cheshire_hw2reg_t;

  // Register offsets
  parameter logic [BlockAw-1:0] CHESHIRE_SCRATCH_0_OFFSET = 7'h 0;
  parameter logic [BlockAw-1:0] CHESHIRE_SCRATCH_1_OFFSET = 7'h 4;
  parameter logic [BlockAw-1:0] CHESHIRE_SCRATCH_2_OFFSET = 7'h 8;
  parameter logic [BlockAw-1:0] CHESHIRE_SCRATCH_3_OFFSET = 7'h c;
  parameter logic [BlockAw-1:0] CHESHIRE_SCRATCH_4_OFFSET = 7'h 10;
  parameter logic [BlockAw-1:0] CHESHIRE_SCRATCH_5_OFFSET = 7'h 14;
  parameter logic [BlockAw-1:0] CHESHIRE_SCRATCH_6_OFFSET = 7'h 18;
  parameter logic [BlockAw-1:0] CHESHIRE_SCRATCH_7_OFFSET = 7'h 1c;
  parameter logic [BlockAw-1:0] CHESHIRE_SCRATCH_8_OFFSET = 7'h 20;
  parameter logic [BlockAw-1:0] CHESHIRE_SCRATCH_9_OFFSET = 7'h 24;
  parameter logic [BlockAw-1:0] CHESHIRE_SCRATCH_10_OFFSET = 7'h 28;
  parameter logic [BlockAw-1:0] CHESHIRE_SCRATCH_11_OFFSET = 7'h 2c;
  parameter logic [BlockAw-1:0] CHESHIRE_SCRATCH_12_OFFSET = 7'h 30;
  parameter logic [BlockAw-1:0] CHESHIRE_SCRATCH_13_OFFSET = 7'h 34;
  parameter logic [BlockAw-1:0] CHESHIRE_SCRATCH_14_OFFSET = 7'h 38;
  parameter logic [BlockAw-1:0] CHESHIRE_SCRATCH_15_OFFSET = 7'h 3c;
  parameter logic [BlockAw-1:0] CHESHIRE_BOOT_MODE_OFFSET = 7'h 40;
  parameter logic [BlockAw-1:0] CHESHIRE_RTC_FREQ_OFFSET = 7'h 44;
  parameter logic [BlockAw-1:0] CHESHIRE_PLATFORM_ROM_OFFSET = 7'h 48;
  parameter logic [BlockAw-1:0] CHESHIRE_NUM_INT_HARTS_OFFSET = 7'h 4c;
  parameter logic [BlockAw-1:0] CHESHIRE_HW_FEATURES_OFFSET = 7'h 50;
  parameter logic [BlockAw-1:0] CHESHIRE_LLC_SIZE_OFFSET = 7'h 54;
  parameter logic [BlockAw-1:0] CHESHIRE_LLC_HIT_CNT_WRITE_CACHE_OFFSET = 7'h 58;
  parameter logic [BlockAw-1:0] CHESHIRE_LLC_HIT_CNT_READ_CACHE_OFFSET = 7'h 5c;
  parameter logic [BlockAw-1:0] CHESHIRE_LLC_MISS_CNT_WRITE_CACHE_OFFSET = 7'h 60;
  parameter logic [BlockAw-1:0] CHESHIRE_LLC_MISS_CNT_READ_CACHE_OFFSET = 7'h 64;
  parameter logic [BlockAw-1:0] CHESHIRE_LLC_REFILL_CNT_WRITE_OFFSET = 7'h 68;
  parameter logic [BlockAw-1:0] CHESHIRE_LLC_REFILL_CNT_READ_OFFSET = 7'h 6c;
  parameter logic [BlockAw-1:0] CHESHIRE_LLC_EVICT_CNT_WRITE_OFFSET = 7'h 70;
  parameter logic [BlockAw-1:0] CHESHIRE_LLC_EVICT_CNT_READ_OFFSET = 7'h 74;
  parameter logic [BlockAw-1:0] CHESHIRE_VGA_PARAMS_OFFSET = 7'h 78;

  // Reset values for hwext registers and their fields
  parameter logic [1:0] CHESHIRE_BOOT_MODE_RESVAL = 2'h 0;
  parameter logic [31:0] CHESHIRE_RTC_FREQ_RESVAL = 32'h 0;
  parameter logic [31:0] CHESHIRE_PLATFORM_ROM_RESVAL = 32'h 0;
  parameter logic [31:0] CHESHIRE_NUM_INT_HARTS_RESVAL = 32'h 0;
  parameter logic [13:0] CHESHIRE_HW_FEATURES_RESVAL = 14'h 0;
  parameter logic [31:0] CHESHIRE_LLC_SIZE_RESVAL = 32'h 0;
  parameter logic [31:0] CHESHIRE_LLC_HIT_CNT_WRITE_CACHE_RESVAL = 32'h 0;
  parameter logic [31:0] CHESHIRE_LLC_HIT_CNT_READ_CACHE_RESVAL = 32'h 0;
  parameter logic [31:0] CHESHIRE_LLC_MISS_CNT_WRITE_CACHE_RESVAL = 32'h 0;
  parameter logic [31:0] CHESHIRE_LLC_MISS_CNT_READ_CACHE_RESVAL = 32'h 0;
  parameter logic [31:0] CHESHIRE_LLC_REFILL_CNT_WRITE_RESVAL = 32'h 0;
  parameter logic [31:0] CHESHIRE_LLC_REFILL_CNT_READ_RESVAL = 32'h 0;
  parameter logic [31:0] CHESHIRE_LLC_EVICT_CNT_WRITE_RESVAL = 32'h 0;
  parameter logic [31:0] CHESHIRE_LLC_EVICT_CNT_READ_RESVAL = 32'h 0;
  parameter logic [23:0] CHESHIRE_VGA_PARAMS_RESVAL = 24'h 0;

  // Register index
  typedef enum int {
    CHESHIRE_SCRATCH_0,
    CHESHIRE_SCRATCH_1,
    CHESHIRE_SCRATCH_2,
    CHESHIRE_SCRATCH_3,
    CHESHIRE_SCRATCH_4,
    CHESHIRE_SCRATCH_5,
    CHESHIRE_SCRATCH_6,
    CHESHIRE_SCRATCH_7,
    CHESHIRE_SCRATCH_8,
    CHESHIRE_SCRATCH_9,
    CHESHIRE_SCRATCH_10,
    CHESHIRE_SCRATCH_11,
    CHESHIRE_SCRATCH_12,
    CHESHIRE_SCRATCH_13,
    CHESHIRE_SCRATCH_14,
    CHESHIRE_SCRATCH_15,
    CHESHIRE_BOOT_MODE,
    CHESHIRE_RTC_FREQ,
    CHESHIRE_PLATFORM_ROM,
    CHESHIRE_NUM_INT_HARTS,
    CHESHIRE_HW_FEATURES,
    CHESHIRE_LLC_SIZE,
    CHESHIRE_LLC_HIT_CNT_WRITE_CACHE,
    CHESHIRE_LLC_HIT_CNT_READ_CACHE,
    CHESHIRE_LLC_MISS_CNT_WRITE_CACHE,
    CHESHIRE_LLC_MISS_CNT_READ_CACHE,
    CHESHIRE_LLC_REFILL_CNT_WRITE,
    CHESHIRE_LLC_REFILL_CNT_READ,
    CHESHIRE_LLC_EVICT_CNT_WRITE,
    CHESHIRE_LLC_EVICT_CNT_READ,
    CHESHIRE_VGA_PARAMS
  } cheshire_id_e;

  // Register width information to check illegal writes
  parameter logic [3:0] CHESHIRE_PERMIT [31] = '{
    4'b 1111, // index[ 0] CHESHIRE_SCRATCH_0
    4'b 1111, // index[ 1] CHESHIRE_SCRATCH_1
    4'b 1111, // index[ 2] CHESHIRE_SCRATCH_2
    4'b 1111, // index[ 3] CHESHIRE_SCRATCH_3
    4'b 1111, // index[ 4] CHESHIRE_SCRATCH_4
    4'b 1111, // index[ 5] CHESHIRE_SCRATCH_5
    4'b 1111, // index[ 6] CHESHIRE_SCRATCH_6
    4'b 1111, // index[ 7] CHESHIRE_SCRATCH_7
    4'b 1111, // index[ 8] CHESHIRE_SCRATCH_8
    4'b 1111, // index[ 9] CHESHIRE_SCRATCH_9
    4'b 1111, // index[10] CHESHIRE_SCRATCH_10
    4'b 1111, // index[11] CHESHIRE_SCRATCH_11
    4'b 1111, // index[12] CHESHIRE_SCRATCH_12
    4'b 1111, // index[13] CHESHIRE_SCRATCH_13
    4'b 1111, // index[14] CHESHIRE_SCRATCH_14
    4'b 1111, // index[15] CHESHIRE_SCRATCH_15
    4'b 0001, // index[16] CHESHIRE_BOOT_MODE
    4'b 1111, // index[17] CHESHIRE_RTC_FREQ
    4'b 1111, // index[18] CHESHIRE_PLATFORM_ROM
    4'b 1111, // index[19] CHESHIRE_NUM_INT_HARTS
    4'b 0011, // index[20] CHESHIRE_HW_FEATURES
    4'b 1111, // index[21] CHESHIRE_LLC_SIZE
    4'b 1111, // index[22] CHESHIRE_LLC_HIT_CNT_WRITE_CACHE
    4'b 1111, // index[23] CHESHIRE_LLC_HIT_CNT_READ_CACHE
    4'b 1111, // index[24] CHESHIRE_LLC_MISS_CNT_WRITE_CACHE
    4'b 1111, // index[25] CHESHIRE_LLC_MISS_CNT_READ_CACHE
    4'b 1111, // index[26] CHESHIRE_LLC_REFILL_CNT_WRITE
    4'b 1111, // index[27] CHESHIRE_LLC_REFILL_CNT_READ
    4'b 1111, // index[28] CHESHIRE_LLC_EVICT_CNT_WRITE
    4'b 1111, // index[29] CHESHIRE_LLC_EVICT_CNT_READ
    4'b 0111  // index[30] CHESHIRE_VGA_PARAMS
  };

endpackage

