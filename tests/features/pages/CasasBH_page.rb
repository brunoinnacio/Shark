# class para testar checkbox
class CasabhPage < SitePrism::Page
  set_url 'https://www.casasbahia.com.br/'

   element :lupa_pesquisa, '#btnOK'
   element :campo_pesquisa, '#strBusca'
 
   def pesquisaiphone
    page.driver.browser.manage.delete_all_cookies
    fill_in 'strBusca', with:'iphone 7'
    lupa_pesquisa.click
   end

   def selecionoprodruto
    page.driver.browser.manage.delete_all_cookies
    click_link_or_button 'Apple iPhone 7 Tela LCD Retina HD 4,7” iOS 13 32 GB - Preto Matte'
   end

   def adicionarprodutocarrinho
    page.driver.browser.manage.delete_all_cookies
    click_button 'Comprar'
    sleep(5)
    end


end


