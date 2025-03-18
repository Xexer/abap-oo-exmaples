CLASS zcl_bs_demo_oo_factory DEFINITION
  PUBLIC ABSTRACT FINAL.

  PUBLIC SECTION.
    CLASS-METHODS create
      RETURNING VALUE(result) TYPE REF TO zif_bs_demo_oo_interface.

ENDCLASS.


CLASS zcl_bs_demo_oo_factory IMPLEMENTATION.
  METHOD create.
    RETURN NEW zcl_bs_demo_oo_private( ).
  ENDMETHOD.
ENDCLASS.
