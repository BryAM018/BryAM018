
DECLARE  @descripcion VARCHAR(50) , @num VARCHAR(50)
declare Cursorun Cursor FOR 
select MISIONES.tipo_mision, count(ID_GRUPO) AS contar from misiones group by TIPO_MISION;

OPEN Cursorun
Fetch next from Cursorun into  @descripcion,@num
WHILE(@@FETCH_STATUS=0)
BEGIN
PRINT @descripcion+'::'+SPACE(3)+@num;

Fetch next from Cursorun into @descripcion, @num
end
CLOSE CURSORun
DEALLOCATE CURSORun



