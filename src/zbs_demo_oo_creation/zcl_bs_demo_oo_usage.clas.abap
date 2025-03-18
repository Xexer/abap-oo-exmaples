CLASS zcl_bs_demo_oo_usage DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PRIVATE SECTION.
    METHODS use_start_class
      IMPORTING !out TYPE REF TO if_oo_adt_classrun_out.

    METHODS use_instance
      IMPORTING !out TYPE REF TO if_oo_adt_classrun_out.

    METHODS use_interface
      IMPORTING !out TYPE REF TO if_oo_adt_classrun_out.

    METHODS use_factory_method
      IMPORTING !out TYPE REF TO if_oo_adt_classrun_out.

    METHODS use_factory
      IMPORTING !out TYPE REF TO if_oo_adt_classrun_out.

    METHODS use_singleton
      IMPORTING !out TYPE REF TO if_oo_adt_classrun_out.
ENDCLASS.


CLASS zcl_bs_demo_oo_usage IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    use_start_class( out ).
    use_instance( out ).
    use_interface( out ).
    use_factory_method( out ).
    use_factory( out ).
    use_singleton( out ).
  ENDMETHOD.


  METHOD use_start_class.
    zcl_bs_demo_oo_start=>save_timestamp( ).

    out->write( zcl_bs_demo_oo_start=>timestamp ).
  ENDMETHOD.


  METHOD use_instance.
    DATA instances TYPE STANDARD TABLE OF REF TO zcl_bs_demo_oo_instance WITH EMPTY KEY.

    DO 3 TIMES.
      DATA(instance) = NEW zcl_bs_demo_oo_instance( ).
      instance->save_timestamp( ).

      INSERT instance INTO TABLE instances.
    ENDDO.

    LOOP AT instances INTO instance.
      out->write( instance->timestamp ).
    ENDLOOP.
  ENDMETHOD.


  METHOD use_interface.
    DATA instance  TYPE REF TO zif_bs_demo_oo_interface.
    DATA instances TYPE STANDARD TABLE OF REF TO zif_bs_demo_oo_interface WITH EMPTY KEY.

    instance = NEW zcl_bs_demo_oo_interface( ).
    instance->save_timestamp( ).
    INSERT instance INTO TABLE instances.

    instance = NEW zcl_bs_demo_oo_empty( ).
    instance->save_timestamp( ).
    INSERT instance INTO TABLE instances.

    LOOP AT instances INTO instance.
      out->write( instance->timestamp ).
    ENDLOOP.

    DATA(interface) = NEW zcl_bs_demo_oo_interface( ).
    interface->zif_bs_demo_oo_interface~save_timestamp( ).

    DATA(interface_cast) = CAST zif_bs_demo_oo_interface( NEW zcl_bs_demo_oo_interface( ) ).
    interface_cast->save_timestamp( ).
  ENDMETHOD.


  METHOD use_factory_method.
*    data(not_allowed) = new zcl_bs_demo_oo_factory_method( ).

    DATA(instance) = zcl_bs_demo_oo_factory_method=>create( ).
    instance->save_timestamp( ).

    DATA(new_timestamp) = zcl_bs_demo_oo_factory_method=>create( )->get_timestamp( ).

    out->write( new_timestamp ).
  ENDMETHOD.


  METHOD use_factory.
    DATA(instance) = zcl_bs_demo_oo_factory=>create( ).
    instance->save_timestamp( ).

    DATA(saved_timestamp) = instance->timestamp.

    out->write( saved_timestamp ).
  ENDMETHOD.


  METHOD use_singleton.
    DATA(save_instance) = zcl_bs_demo_oo_singleton=>get_instance( ).
    save_instance->save_timestamp( ).

    DATA(empty_instance) = zcl_bs_demo_oo_singleton=>get_instance( ).

    IF save_instance->timestamp = empty_instance->timestamp.
      out->write( `The same` ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
