defmodule EnumsTest do
  use ExUnit.Case
  doctest Enums

  test "greets the world" do
    assert Enums.hello() == :world
  end

  test "Deve selecionar o gato British Shorthair" do
    assert Enums.gatos_sel("British Shorthair")
  end

  test "Deve achar o maior numero" do
    assert Enums.achar_max([1,2,8,10,73,29,90,12]) == 90
  end

  test "Deve diminuir as duplicatas da lista" do
    assert Enums.diminuir_duplicatas([1,1,2,9,9,10,3,23,3]) == [1,2,9,10,3,23]
  end

  test "Deve ordenar a lista" do
    assert Enums.ordenar_array([5,19,53,13,45,80,12]) == [5,12,13,19,45,53,80]
  end

  test "Deve retornar true para a lista  com [2,4,6,8,10]" do 
    assert Enums.todos_pares([2,4,6,8,10]) == true
  end
end
