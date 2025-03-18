CLASS zcl_bs_demo_oo_interface DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES zif_bs_demo_oo_interface.

    ALIASES timestamp FOR zif_bs_demo_oo_interface~timestamp.
ENDCLASS.


CLASS zcl_bs_demo_oo_interface IMPLEMENTATION.
  METHOD zif_bs_demo_oo_interface~get_timestamp.
    GET TIME STAMP FIELD result.
  ENDMETHOD.


  METHOD zif_bs_demo_oo_interface~save_timestamp.
    timestamp = zif_bs_demo_oo_interface~get_timestamp( ).
  ENDMETHOD.
ENDCLASS.
