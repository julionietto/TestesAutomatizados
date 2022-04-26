Quando ('realizo um login válido') do
    login.load
    login.logar
end

Então ('verifico se estou logado') do
    find('.app__dashboard__header')
end

