INTERFACE zif_bs_demo_oo_constants
  PUBLIC.

  TYPES basic_option TYPE c LENGTH 1.

  CONSTANTS option_created  TYPE basic_option VALUE 'C'.
  CONSTANTS option_planned  TYPE basic_option VALUE 'P'.
  CONSTANTS option_finished TYPE basic_option VALUE 'F'.

  CONSTANTS other_option    TYPE c LENGTH 10  VALUE 'OTHER'.
  CONSTANTS more_constants  TYPE c LENGTH 5   VALUE 'MORE'.

  CONSTANTS: BEGIN OF options,
               created  TYPE basic_option VALUE 'C',
               planned  TYPE basic_option VALUE 'P',
               finished TYPE basic_option VALUE 'F',
             END OF options.

  METHODS evaluate_option
    IMPORTING !option       TYPE basic_option
    RETURNING VALUE(result) TYPE abap_boolean.

  METHODS get_option
    RETURNING VALUE(result) TYPE basic_option.
ENDINTERFACE.
