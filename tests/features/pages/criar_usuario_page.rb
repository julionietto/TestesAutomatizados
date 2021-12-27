class User < SitePrism::Page
    set_url 'cadastro'

    element :nome_completo, '#pf_nome_cliente'
    element :dtNascto,      '#pf_data_nascimento'
    element :cpf,           '#pf_cpf_cliente'
    element :telefone,      '#telefone_cliente_2'
    element :email,         '#email_cliente'  
    element :email_conf,    '#email_cliente2' 
    element :senha,         '#senha_cliente'
    element :senhaconfirma, '#senha_cliente2'
    element :cadastrar,     '.botoes_personalizados_enviar.botoes_personalizados_enviar_img.right.clear'

    def preencher_usuario
        nome_completo.set Faker::Name.name_with_middle  
        dtNascto.set      Faker::Date.birthday(min_age: 18, max_age: 65).strftime('%d-%m-%Y')
        cpf.set           Faker::CPF.numeric
        telefone.set      '119' + Faker::PhoneNumber.phone_number

        @email          = Faker::Internet.email
        email.set         @email
        email_conf.set    @email 

        @senhaUsuario   = Faker::Internet.password
        senha.set         @senhaUsuario
        senhaconfirma.set @senhaUsuario

        cadastrar.click
    end

end

