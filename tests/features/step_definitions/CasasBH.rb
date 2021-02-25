Dado('que estou na Home') do
    @bh = CasabhPage.new
    @bh.load
  end

  E ('pesquiso um produto') do
    @bh.pesquisaiphone
  end
  
  Quando('Selecionar o produto desejado') do
    @bh.selecionoprodruto
  end
  
  Quando('adiciono no carrinho') do
    @bh.adicionarprodutocarrinho 
  end
  
  Então('Deve finalizar a compra') do
    page.driver.browser.manage.delete_cookie 'ak_bmsc'
    click_button 'Continuar'
    sleep(5)
    page.driver.browser.manage.delete_cookie 'ak_bmsc'
  
    find("a[data-id='lnkQtdeMais']").click
    sleep(5)
    page.execute_script 'window.scrollBy(0,1000)'
    fill_in 'Cep', with:'86400000'
    find(:id, "btnCalcularFrete").click
    sleep(5)
  
    
    click_link_or_button 'Adicionar Fique Seguro'
    sleep(5)
    page.driver.browser.manage.delete_cookie 'ak_bmsc'
    
    within_frame 'TB_iframeContent' do
      first(:id, 'FiqueSeguro01').set(true)
      
      find("a[data-id='btnContinuar']").click
    
     end
     first("a[data-id='btnComprar']").click
     sleep(10)
  end

