CLASS zcl_bs_demo_oo_private DEFINITION
  PUBLIC FINAL
  CREATE PRIVATE
  GLOBAL FRIENDS zcl_bs_demo_oo_factory.

  PUBLIC SECTION.
    INTERFACES zif_bs_demo_oo_interface.
ENDCLASS.


CLASS zcl_bs_demo_oo_private IMPLEMENTATION.
  METHOD zif_bs_demo_oo_interface~get_timestamp.
    GET TIME STAMP FIELD result.
  ENDMETHOD.


  METHOD zif_bs_demo_oo_interface~save_timestamp.
    zif_bs_demo_oo_interface~timestamp = zif_bs_demo_oo_interface~get_timestamp( ).
  ENDMETHOD.
ENDCLASS.
