CREATE OR REPLACE TRIGGER t
After
	INSERT OR UPDATE ON students for each row
BEGIN
  CASE
	WHEN INSERTING THEN
  		update students set tot= m1+ m2+m3;
		update students set avge = tot/3;
  END CASE;
END;
/