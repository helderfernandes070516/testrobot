*** Settings ***
# Dentro do documentation estará presente informações a respeito do arquivo.
Documentation       Aqui estarão presentes todos os exercícios do Prime Experts
...                 focado em Imersão com Robot Framework.


*** Variables ***
# Minha primera variável Simples
${NOME}     Helder Fernandes

# Minha primeira variável do tipo Dicionário
&{PESSOA}           
...         nome=Helder      
...         sobrenome=Fernandes        
...         idade=27
...         cpf=45664598712
...         endereco=rua testando
...         cidade=cajamar

# Minha primeira variável do tipo Lista
@{FRUTAS}    
...         Banana          
...         Maçã     
...         Abacaxi    
...         Morango

*** Test Cases ***
Cenario: Imprimir o Dicionário
    Log To Console      ${PESSOA.nome}
    Log To Console      ${PESSOA.idade}

Cenario: Imprimir 6 informações de usuários
    [Tags]              TESTE
    Log To Console      ${PESSOA.nome}
    Log To Console      ${PESSOA.sobrenome}
    Log To Console      ${PESSOA.idade}
    Log To Console      ${PESSOA.cpf}
    Log To Console      ${PESSOA.endereco}
    Log To Console      ${PESSOA.cidade}

Cenario: Realizar soma
    [Tags]      SOMA
    ${RESULTADO}        Somar dois números  5  9
    Log To Console      ${RESULTADO}

Cenario: Meu teste soma
    [Tags]      SOMA_2
    ${RESULTADO}        Somar dois números "55" e "44"
    Log To Console      ${RESULTADO}

Cenario: Criando um email com argumentos
    [Tags]       EMAIL
    ${RESULTADO_EMAIL}          Criar e-mail concatenado  Helder  Fernandes  27
    Log To Console              ${RESULTADO_EMAIL}

    ${RESULTADO}                Criar e-mail concatenado "aline", "fernandes" e "30"
    Log To Console              ${RESULTADO}

Cenario: Contando de 0 a 9
    [Tags]      COUNT
    FOR     ${count}    IN RANGE    0   10
        Log To Console      ${count}
    END

Cenario: For para imprimir FRUTAS
    [Tags]      FRUTAS
    @{FRUTA}   Create List     Morango     maçã    uva     abacaxi
    FOR     ${frutas}   IN      @{FRUTA}
        Log To Console  ${frutas}
    END

    Contador usando o For  0  20

Cenario: Estou no número FOR
    [Tags]      CONSOLE
    Imprimir nome do países

*** Keywords ***
Somar dois números
    [Arguments]   ${NUM_A}      ${NUM_B}
    ${SOMA}       Evaluate      ${NUM_A}+${NUM_B}
    [Return]      ${SOMA}

Somar dois números "${NUM_A}" e "${NUM_B}"
    ${SOMA}       Evaluate      ${NUM_A}+${NUM_B}
    [Return]      ${SOMA}

Criar e-mail concatenado
    [Arguments]     ${NOME}     ${SOBRENOME}    ${IDADE}
    ${EMAIL}        Catenate    SEPARATOR=_     ${NOME}     ${SOBRENOME}    ${IDADE}@robot.com
    [Return]        ${EMAIL}

Criar e-mail concatenado "${NOME}", "${SOBRENOME}" e "${IDADE}"
    ${EMAIL}        Catenate    SEPARATOR=_     ${NOME}     ${SOBRENOME}    ${IDADE}@robot.com
    [Return]        ${EMAIL}

Contador usando o For
    [Arguments]     ${INIT}     ${FINISH}
    FOR   ${count}      IN RANGE        ${INIT}     ${FINISH}
        Log To Console      ${count}
    END

Contador imprime no Console
    FOR   ${numero}  IN RANGE    0   10

        IF  '${numero}'=='5'
            Log To Console      Estou no número: ${numero}
    END

Imprimir nome do países
    @{PAÍSES}   Create List     Brasil      Jamaica     México      Canada
    FOR     ${país}     IN      @{PAÍSES}
        Log To Console      Estou no seguinte país: ${país}
    END


    

Open browser

siandoains

asdapsidna

aopsjdpainsd

painsdpias

close browser
