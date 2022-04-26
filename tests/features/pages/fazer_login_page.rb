class Login < SitePrism::Page
    set_url 'https://www.cheveautopecas.com.br/central-do-cliente'

#    element :login,     '.bt-efetua-login.clear'
    element :email,     '#input-email'
    element :continuar, '#tray-login-identify'
    element :senha,     '#input-password'
    element :senhacontinuar, '#password-submit'

    def logar
#        login.click
        first('.bt-efetua-login.clear').click
        email.set 'vicente@bruen-dickens.info'
        continuar.click
        senha.set 'S8zGvYmR2'
        senhacontinuar.click
    end
end