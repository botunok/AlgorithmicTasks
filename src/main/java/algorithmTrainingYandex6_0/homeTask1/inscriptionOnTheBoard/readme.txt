https://contest.yandex.ru/contest/66792/problems/C/


C. Надпись на табло
Ограничение времени	1 секунда
Ограничение памяти	256Mb
Ввод	стандартный ввод или input.txt
Вывод	стандартный вывод или output.txt
Вы получили доступ к одной из камер наблюдения в особо секретной огранизации. В зоне видимости камеры находится табло, с которого вы постоянно считываете информацию. Теперь вам нужно написать программу, которая по состоянию табло определяет, какая буква изображена на нём в данный момент. Табло представляет из себя квадратную таблицу, разбитую на
n
×
n
n×n равных квадратных светодиодов. Каждый диод либо включён, либо выключен. Введём систему координат, направив ось
O
X
OX вправо, а ось
O
Y
OY — вверх, приняв сторону диода равной 1.

На табло могут быть изображены только следующие буквы:

I — прямоугольник из горящих диодов.
O — прямоугольник из горящих диодов с углами
(
x
1
,
y
1
)
(x
1
​
 ,y
1
​
 ) и
(
x
2
,
y
2
)
(x
2
​
 ,y
2
​
 ), внутри которого есть прямоугольник из выключенных диодов с координатами углов
(
x
3
,
y
3
)
(x
3
​
 ,y
3
​
 ) и
(
x
4
,
y
4
)
(x
4
​
 ,y
4
​
 ). При этом границы выключенного прямоугольника не должны касаться внешнего, то есть
x
1
<
x
3
<
x
4
<
x
2
x
1
​
 <x
3
​
 <x
4
​
 <x
2
​
  и
y
1
<
y
3
<
y
4
<
y
2
y
1
​
 <y
3
​
 <y
4
​
 <y
2
​
 .
C — прямоугольник из горящих диодов с углами
(
x
1
,
y
1
)
(x
1
​
 ,y
1
​
 ) и
(
x
2
,
y
2
)
(x
2
​
 ,y
2
​
 ), внутри которого есть прямоугольник из выключенных диодов с координатами углов
(
x
3
,
y
3
)
(x
3
​
 ,y
3
​
 ) и
(
x
4
,
y
4
)
(x
4
​
 ,y
4
​
 ). При этом правая граница выключенного прямоугольника находится на правой границе внешнего прямоугольника, то есть
x
1
<
x
3
<
x
4
=
x
2
x
1
​
 <x
3
​
 <x
4
​
 =x
2
​
  и
y
1
<
y
3
<
y
4
<
y
2
y
1
​
 <y
3
​
 <y
4
​
 <y
2
​
 .
image

L — прямоугольник из горящих диодов с углами
(
x
1
,
y
1
)
(x
1
​
 ,y
1
​
 ) и
(
x
2
,
y
2
)
(x
2
​
 ,y
2
​
 ), внутри которого есть прямоугольник из выключенных диодов с координатами углов
(
x
3
,
y
3
)
(x
3
​
 ,y
3
​
 ) и
(
x
4
,
y
4
)
(x
4
​
 ,y
4
​
 ). При этом правые верхние углы выключенного прямоугольника и внешнего прямоугольника совпадают, то есть
x
1
<
x
3
<
x
4
=
x
2
x
1
​
 <x
3
​
 <x
4
​
 =x
2
​
  и
y
1
<
y
3
<
y
4
=
y
2
y
1
​
 <y
3
​
 <y
4
​
 =y
2
​
 .
H — прямоугольник из горящих диодов с углами
(
x
1
,
y
1
)
(x
1
​
 ,y
1
​
 ) и
(
x
2
,
y
2
)
(x
2
​
 ,y
2
​
 ), внутри которого находятся 2 прямоугольника из выключенных диодов с координатами углов
(
x
3
,
y
3
)
(x
3
​
 ,y
3
​
 ),
(
x
4
,
y
4
)
(x
4
​
 ,y
4
​
 ) у первого и
(
x
5
,
y
5
)
(x
5
​
 ,y
5
​
 ),
(
x
6
,
y
6
)
(x
6
​
 ,y
6
​
 ) у второго. При этом выключенные прямоугольники должны иметь одинаковую ширину, находиться строго один под другим, один прямоугольник должен касаться верхней стороны, а другой прямоугольник должен касаться нижней стороны внешнего прямоугольника, то есть
x
1
<
x
3
=
x
5
<
x
4
=
x
6
<
x
2
x
1
​
 <x
3
​
 =x
5
​
 <x
4
​
 =x
6
​
 <x
2
​
  и
y
1
=
y
3
<
y
4
<
y
5
<
y
6
=
y
2
y
1
​
 =y
3
​
 <y
4
​
 <y
5
​
 <y
6
​
 =y
2
​
 .
image

P — прямоугольник из горящих диодов с углами
(
x
1
,
y
1
)
(x
1
​
 ,y
1
​
 ) и
(
x
2
,
y
2
)
(x
2
​
 ,y
2
​
 ), внутри которого находятся 2 прямоугольника из выключенных диодов с координатами углов
(
x
3
,
y
3
)
(x
3
​
 ,y
3
​
 ),
(
x
4
,
y
4
)
(x
4
​
 ,y
4
​
 ) у первого и
(
x
5
,
y
5
)
(x
5
​
 ,y
5
​
 ),
(
x
6
,
y
6
)
(x
6
​
 ,y
6
​
 ) у второго. При этом правый нижний угол первого выключенного прямоугольника должен совпадать с правым нижним углом внешнего прямоугольника, а другой выключенный прямоугольник должен находиться строго выше и не касаться границ других прямоугольников, также левые границы двух выключенных прямоугольников должны совпадать, то есть
x
1
<
x
3
=
x
5
<
x
6
<
x
4
=
x
2
x
1
​
 <x
3
​
 =x
5
​
 <x
6
​
 <x
4
​
 =x
2
​
  и
y
1
=
y
3
<
y
4
<
y
5
<
y
6
<
y
2
y
1
​
 =y
3
​
 <y
4
​
 <y
5
​
 <y
6
​
 <y
2
​
 .
image

Любое другое состояние табло считается буквой X.
По виду табло определите, какая буква на нём изображена.

Формат ввода
В первой строке входных данных находится одно число
n
n (
1
≤
n
≤
10
1≤n≤10) — сторона табло.

В следующих
n
n строках находятся строки длины
n
n из символов «.» и «#» — строки таблицы. «.» обозначает выключенный квадратный диод табло, а «#» — горящий.

Формат вывода
Программа должна вывести единственный символ: если данная таблица подходит под одно из описаний букв I, O, C, L, H, P, то выведите её (все буквы — английские). Если же данная таблица не подходит ни под какие условия, то выведите X.

Пример 1
Ввод	Вывод
4
.##.
.##.
.##.
....
I
Пример 2
Ввод	Вывод
5
#...#
.#.#.
..#..
.#.#.
#...#
X