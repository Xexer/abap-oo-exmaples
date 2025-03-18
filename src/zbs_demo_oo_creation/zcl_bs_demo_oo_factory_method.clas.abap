CLASS zcl_bs_demo_oo_factory_method DEFINITION
  PUBLIC FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.
    INTERFACES zif_bs_demo_oo_interface.

    CLASS-METHODS create
      RETURNING VALUE(result) TYPE REF TO zif_bs_demo_oo_interface.
ENDCLASS.


CLASS zcl_bs_demo_oo_factory_method IMPLEMENTATION.
  METHOD create.
    RETURN NEW zcl_bs_demo_oo_factory_method( ).
  ENDMETHOD.


  METHOD zif_bs_demo_oo_interface~get_timestamp.
    GET TIME STAMP FIELD result.
  ENDMETHOD.


  METHOD zif_bs_demo_oo_interface~save_timestamp.
    zif_bs_demo_oo_interface~timestamp = zif_bs_demo_oo_interface~get_timestamp( ).
  ENDMETHOD.
ENDCLASS.
