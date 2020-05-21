DECLARE
  P_FILE_ID VARCHAR2(200);
  v_Return VARCHAR2(200);
BEGIN
  P_FILE_ID := NULL;

  v_Return := HUBS_UTILITY_PKG.HUBS_UUDF_FILE_TYPE_CHECK(
    P_FILE_ID => P_FILE_ID
  );
  /* Legacy output: 
DBMS_OUTPUT.PUT_LINE('v_Return = ' || v_Return);
*/ 
  :v_Return := v_Return;
--rollback; 
END;
