    "Return Parameter lt_items ist of structure of table line
    lt_items type ZISM_HISTORY_TAB (referenced to ZISM_HISTORY_S)


method GET_COUNTING_HISTORY.

    DATA: lt_count type STANDARD TABLE OF zism_matcount.

    SELECT * FROM ZISM_MATCOUNT into table lt_count
      where xloek <> 'X'.

    "manual mapping of for missing fields
    lt_items = CORRESPONDING #( lt_count mapping INP_QTY = bmenge
                                                 INP_UNIT = bmeins ).

endmethod.