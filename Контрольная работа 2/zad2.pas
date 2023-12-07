program zad2;
var s: string; w, l, i: integer; g: boolean;
begin
  // Ввод строки
  write('Введите строку: ');
  readln(s);
  // Инициализация счетчиков
  w := 0;
  l := 0;
  g := false;
  // Перебор символов строки
  for i := 1 to length(s) do
  begin
    // Проверка, является ли символ буквой
    if (s[i] >= 'А') and (s[i] <= 'Я') or
       (s[i] >= 'а') and (s[i] <= 'я') then
    begin
      l := l + 1;
      g := true;
    end
    else
    begin
      // Если предыдущий символ был буквой, увеличиваем счетчик слов
      if g then
        w := w + 1;
      g := false;
    end;
  end;
  // Учет последнего слова, если строка не заканчивается пробелом
  if g then
    w := w + 1;
  // Вывод результатов
  writeln('Количество слов: ', w);
  writeln('Количество букв: ', l);
end.

