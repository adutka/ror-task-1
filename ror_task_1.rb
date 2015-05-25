class RorTask1

  #Напишите программу, которая для заданного натурального числа num определяет
  #количество вхождений числа 3 в разложение заданного числа на простые сомножители.
  def how_many_threes num
    n=81
    k=1
    while n%(3**k)==0
    k+=1
    end
    print k-1
    # 2 hours
  end

  #Дан текст. Определите максимальное из имеющихся в нем чисел.
  def max_number_in_text text
    “123, wert 1 dkfdk”.scan(/[0-9]+/).max
    #10 min#код писать сюда
  end

  #Дан целочисленный массив. Необходимо вывести вначале его элементы с четными
  #индексами, а затем - с нечетными.
  def even_odd_elements arr
    array = [1, 2, 3, 4, 5]
    a = array.find_all{ |elem| elem % 2 == 0 }
    b = array.find_all{ |elem| elem % 2 != 0 }
    c = a+b
    # 11 min
  end

  #Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам последний
  #элемент. Первый и последний элементы массива не изменять.
  def even_elements_addition arr
    array = [1, 2, 3, 4, 5]
    a= array.shift
    d=array.pop
    r=array
    b = r.find_all{ |elem| elem % 2 == 0 } #elem.even?
    c1 = r.find_all{ |elem| elem % 2 != 0 }#elem.odd?
    c = c1.map{ |elem| elem+ d }
    newArr = [a]+b+c+[d]
    #25 min
  end

  #Дан целочисленный массив, содержащий по крайней мере два нуля. Вывести сумму чисел
  #из данного массива, расположенных между первыми двумя нулями.
  def sum_between_zeros arr
    array = [1, 2, 0, 3, 4, 9, 0, 5,0,7]
    a = array.index(array.find { |elem| elem*1 == 0 })
    array2=array.drop(a+1)
    b= array2.index(array2.find { |elem| elem*1 == 0 })
    array3=array2.pop(array2.size-b)
    array4 = array2-array3
    sum = array4.inject(0){ |result, elem| result + elem }
    #25 min
  end

end
