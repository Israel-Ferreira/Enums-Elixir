defmodule Enums do
  require Integer
  @moduledoc """
  Documentation for Enums.
  """

  def hello do
    :world
  end

  @doc """
  O metodo gatos_sel(gt) retorna a raça do gato retorna de acordo com o argumento
  ### Exemplo
      iex> Enums.gatos_sel("British Shorthair")
      ["British Shorthair"]
  """
  def gatos_sel(gt) do
    gatos = ["British Shorthair","Brazilian Shorthair","Persian","Maine Coon","Angora"]
    Enum.filter(gatos, fn(gato) -> gato == gt end)
  end
  
  @doc """
  O metodo achar_max(numeros) retorna o maior numero da lista
  ### Exemplo
      iex> Enums.achar_max([1,2,3,4,10,89,20,13])
      89
  """
  def achar_max(numeros) do
    Enum.max(numeros)
  end

  @doc """
  O metodo diminuir_duplicatas(array) retorna o array sem duplicatas
  ### Exemplo
      iex> Enums.diminuir_duplicatas([1,2,1,2,3,8,10,12])
      [1,2,3,8,10,12]
  """
  def diminuir_duplicatas(numeros) do
    Enum.uniq_by(numeros, fn x -> x end)
  end


  @doc """
  O metodo ordenar_array(array) retorna o array ordenado
  ### Exemplo
      iex> Enums.ordenar_array([90,20,113,2,34,3,31,45])
      [2,3,20,31,34,45,90,113]
  """
  def ordenar_array(numeros) do
    Enum.sort(numeros)
  end


  @doc """
  O metodo todos_pares(array) retorna se todos os números são pares
  ### Exemplo
      iex> Enums.todos_pares([2,4,8,10,12,14,16,18])
      true
  """
  def todos_pares(numeros) do
    Enum.all?(numeros, fn(n) -> Integer.is_even(n) end)
  end
end
