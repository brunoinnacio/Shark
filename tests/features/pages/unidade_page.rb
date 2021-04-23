# class para testar checkbox
class HomePage < SitePrism::Page
  set_url 'https://www.fleury.com.br/'

  element :campo_filtro, '#checkoox-select-facilities'
  element :checkbox_bicicletario, 'label[for="_Bicicletário e vaga verde"]'
  element :checkbox_vacinacao, 'label[for="_Vacinação"]'
  element :checkbox_Atendimento, 'label[for="_Atendimento aos domingos"]'

  def seleciona_facilidades
    campo_filtro.click
    checkbox_bicicletario.click
    checkbox_vacinacao.click
    checkbox_Atendimento.click
  end
end
