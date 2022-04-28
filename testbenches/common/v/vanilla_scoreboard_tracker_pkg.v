package vanilla_scoreboard_tracker_pkg;

  // integer scoreboard
  typedef struct packed {
    logic remote_group_load;
    logic remote_global_load;
    logic remote_dram_load;
    logic idiv;
  } vanilla_isb_info;

  // floating point scoreboard
  typedef struct packed {
    logic remote_group_load;
    logic remote_global_load;
    logic remote_dram_load;
    logic fdiv_fsqrt;
  } vanilla_fsb_info;

endpackage // vanilla_scoreboard_tracker_pkg
