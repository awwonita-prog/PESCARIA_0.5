if (global.catalogo_aberto) { // Adicionado global.
    // ... (código do fundo e alinhamento permanecem iguais) ...

    // 4. Desenha os peixes (Acessando a lista global)
    var yy = 180;
    var limite_inferior = 520; 

    for (var i = 0; i < array_length(global.catalogo_peixes); i++) { // Adicionado global.
        if (yy > limite_inferior) {
            draw_text(150, yy, "... e mais peixes abaixo ...");
            break;
        }

        var p = global.catalogo_peixes[i]; // Adicionado global.
        var texto_mostrar = p.descoberto ? (string(p.nome) + " - " + string(p.info)) : "??? - Desconhecido";

        draw_text(150, yy, texto_mostrar);
        yy += 40;
    }

    // ... (resto do código de desenho e resets) ...
}
