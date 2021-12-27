class Login < SitePrism::Page
    set_url 'https://www.cheveautopecas.com.br/central-do-cliente'

    element :login,     '.bt-efetua-login.clear'
    element :email,     '#input-email'
    element :continuar, '#tray-login-identify'
    element :senha,     '#input-password'

    def logar
        login.click
        email.set 'vicente@bruen-dickens.info'
        continuar.click
        senha.set 'S8zGvYmR2'
        continuar.click
    end
end