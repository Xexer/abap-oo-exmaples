CLASS zcl_bs_demo_oo_empty DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES zif_bs_demo_oo_interface.
ENDCLASS.


CLASS zcl_bs_demo_oo_empty IMPLEMENTATION.
  METHOD zif_bs_demo_oo_interface~get_timestamp.
  ENDMETHOD.


  METHOD zif_bs_demo_oo_interface~save_timestamp.
  ENDMETHOD.
ENDCLASS.
