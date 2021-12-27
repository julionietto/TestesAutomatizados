Quando ('realizo um login válido') do
    login.load
    login.logar
end

Então ('verifico se estou logado') do
    visit 'https://www.cheveautopecas.com.br/my-account/'
    find('.app__dashboard__header')
end