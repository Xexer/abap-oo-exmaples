CLASS zcl_bs_demo_oo_constants DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
    INTERFACES zif_bs_demo_oo_constants.
ENDCLASS.


CLASS zcl_bs_demo_oo_constants IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA demo TYPE REF TO zif_bs_demo_oo_constants.

    demo = NEW zcl_bs_demo_oo_constants( ).

    IF demo->evaluate_option( zif_bs_demo_oo_constants=>options-created ).
    ENDIF.

    IF demo->evaluate_option( demo->options-planned ).
    ENDIF.
  ENDMETHOD.


  METHOD zif_bs_demo_oo_constants~evaluate_option.
  ENDMETHOD.


  METHOD zif_bs_demo_oo_constants~get_option.
  ENDMETHOD.
ENDCLASS.
