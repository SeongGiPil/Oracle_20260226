--트리거
--특정테이블 
--실행되는 프로시저
CREATE OR REPLACE TRIGGER TEST_TRIGGER
BEFORE -- 트리거실행 시점(BEFORE OF AFTER
INSERT OR  UPDATE ON EMP--EMP테이블에 레코드가INSERT 혹은 UPDATE될때 실행
FOR EACH ROW --각 행 별로 트리거 실행
            --(ex,UPDATE로 3개 행에 영향을 준다면 트리거도 3번실행)
BEGIN
    DBMS_OUTPUT.PUT_LINE('변경 전:'||:OLD.SAL);
    DBMS_OUTPUT.PUT_LINE('변경후:'||:NEW.SAL);
    
END;
/

SELECT * FROM EMP;

UPDATE EMP
SET 
SAL=1350
WHERE EMPNO=7521;

