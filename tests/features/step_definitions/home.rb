Dado('que estou na Paginal Inicial') do
  @unidade = HomePage.new
  @unidade.load
end

E('clico em unidade') { click_link_or_button 'Unidades' }

Quando('Seleciono as Facilidades') do
 @unidade.seleciona_facilidades
end

E('seleciono na unidade Alphaville') { click_link_or_button 'Alphaville' }

Então('Deverá aparecer o nome da unidade Alphaville') do
  expect(page).to have_current_path('https://www.fleury.com.br/unidades/alphaville', url: true)
  expect(page).to have_content('Alphaville')
end