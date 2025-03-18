CLASS zcl_bs_demo_oo_start DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    CLASS-DATA timestamp TYPE timestampl READ-ONLY.

    CLASS-METHODS get_timestamp
      RETURNING VALUE(result) TYPE timestampl.

    CLASS-METHODS save_timestamp.
ENDCLASS.


CLASS zcl_bs_demo_oo_start IMPLEMENTATION.
  METHOD get_timestamp.
    GET TIME STAMP FIELD result.
  ENDMETHOD.


  METHOD save_timestamp.
    timestamp = get_timestamp( ).
  ENDMETHOD.
ENDCLASS.
