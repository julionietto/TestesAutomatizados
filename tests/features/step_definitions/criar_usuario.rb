Quando ('crio um novo usuario') do
    user.load
    user.preencher_usuario
end

Então ('confiro se o novo usuario foi cadastrado') do
    @url = page.current_path
    expect(@url).to eql '/loja/cadastro_sucesso.php'
end