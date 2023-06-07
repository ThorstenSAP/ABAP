method get_EntitySet...

    "entity defined by structure ZISM_HISTORY_S


    DATA(lo_mc) = NEW zcl_ism_ca_mat_count( ).
    data(ls_head) = get_set_header( EXPORTING io_tech_request_context_set =  io_tech_request_context ).
    DATA(lt_items) = lo_mc->GET_COUNTING_HISTORY( ls_head ).


    et_entityset = lt_items.

endmethod.