program zad1;
var arr: array[1..10] of integer;
 i, j: integer;
 found: boolean;
begin
  writeln('Введите 10 целых чисел для заполнения массива:');
  for i := 1 to 10 do
  begin
    write('arr[', i, '] = ');
    readln(arr[i]);
  end;
  found := False;
  for i := 1 to 9 do
  begin
    for j := i + 1 to 10 do
    begin
      if (arr[i] * arr[j] <= arr[i] + arr[j]) then
      begin
        writeln('Найдены элементы ', arr[i], ' и ', arr[j], ' с произведением, не превышающим их сумму');
        found := True;
      end;
    end;
  end;
  if not found then
    writeln('Таких элементов не найдено');
end.