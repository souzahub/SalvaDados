//COMEÇANDO O SCRIPT E CRIANDO OBJETOS
var menu = document.createElement("div");
$(menu).attr("id","menu_flutuante");
var menu_aberto = false;
var menuwrap = document.createElement("div");
var menuitens = [];
//DEFININDO NUMERO DE ITENS NO MENU
var num_itens = 3;

//DEFININDO CSS DO MENU
$(menu).css({
    "position":"fixed",
    "width":"50px",
    "height":"50px",
    "right":"20px",
    "bottom":"20px",
    "background-color":"#101030",
    "border-radius":"100%",
    "box-shadow":"2px 2px 4px #404040a0"
});

$(menuwrap).css({
    "position":"fixed",
    "right":"20px",
    "bottom":"60px",
    "transition":"0.15s",
    "opacity":"0",
    "text-align":"right",
    "display":"none"
});

//DESENHANDO OS ITENS DO MENU
function drawItens(n)
{
    for( var i=0; i<n; i++)
    {
        var itemwrap = document.createElement("div");
        var itemlab = document.createElement("div");
        var item = document.createElement("div");

        $(itemwrap).css({
            "height":"50px",
            "margin-bottom":"2px",
            "margin-top":"2px",
            "display":"block"
        });
        $(itemlab).attr("class","label_item");
        $(itemlab).css({
            "box-shadow":"2px 2px 4px #404040a0",
            "margin-right":"6px",
            "display":"inline-block"
        });
        $(item).attr("id","menu_item_"+i);
        $(item).attr("class","menu_item");
        $(item).css({
            "width":"50px",
            "height":"50px",
            "border-radius":"100%",
            "background-color":"#202040",
            "text-align":"center",
            "line-height":"50px",
            "font-size":"20px",
            "box-shadow":"2px 2px 4px #404040a0",
            "display":"inline-block"
        });

        menuitens.push(itemwrap);
        $(menuwrap).append(itemwrap);
        $(itemwrap).append(itemlab);
        $(itemwrap).append(item);
    }
}

//DEFININDO ESTILIZA_ITEM
function Estiliza_item(ind,color,ct,label)
{
    var lab = label || "";
    $(menuitens[ind]).find(".menu_item").css("background-color",color);
    $(menuitens[ind]).find(".menu_item").html(ct);
    $(menuitens[ind]).find(".label_item").html(label);
}

//INICIANDO O MENU
$(document).ready(function(){
    $("body").append(menu);
    $(menu).append(menuwrap);
    drawItens(num_itens);
    Funcoes_de_cada_item();
    Estiliza_menu_itens();
});

//CLICK DO MENU
$(document).on("click","#menu_flutuante",function(){
    if( menu_aberto )
    {
        $(menuwrap).css({
            "opacity":"0",
            "bottom":"60px"
        });
        setTimeout(function(){
            $(menuwrap).hide(0);
            menu_aberto = false;
        },150);
    }
    else
    {
        $(menuwrap).show(0,function(){
            $(menuwrap).css({
                "opacity":"1",
                "bottom":"80px"
            });
            menu_aberto = true;
        });
    }
});

//
//
// FAÇA ALTERAÇÕES SOMENTE NAS FUNÇÕES ABAIXO, COMO SUGERIDO
//
//

// DEFININDO A FUNÇÃO CLICK DE CADA BOTÃO
function Funcoes_de_cada_item(){
    //PARA CADA ITEM, VOCE DEVE REPETIR O EXEMPLO ABAIXO
    //OS ITENS SEGUEM A ORDEM: CIMA(0) -> BAIXO(n)
    
    //menuitens[0].onclick = function()
    //{
    //  EXECUTA FUNÇÃO AJAX OU OUTRA QUALQUER
    //}

    menuitens[0].onclick = function(){
        alert("OI");
    }


}

//ESTILIZANDO ITENS DO MENU
function Estiliza_menu_itens()
{
    //PARA CADA ITEM DO MENU, BASTA CHAMAR A FUNÇÃO ABAIXO, ESPECIFICANDO
    //SEU INDICE(NUMERO), SUA COR(STRING), SEU CONTEUDO(STRING), SEU LABEL(STRING)
    //Estiliza_item(Indice, Cor, Conteudo, Texto Lateral);
    Estiliza_item(0,"blue","+","Adicionar");
    Estiliza_item(1,"red","Botão");
}
