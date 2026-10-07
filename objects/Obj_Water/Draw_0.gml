var espacamento = largura_total / (pontos - 1);

// -------------------------------------------------------------
// 1. DESENHAR O CORPO PRETO DA ÁGUA
// -------------------------------------------------------------
draw_primitive_begin(pr_trianglestrip);
draw_set_color(c_black);

for (var i = 0; i < pontos; i++) {
    var px = x + (i * espacamento);
    var py = altura_base + sin(tempo + (i * frequencia)) * amplitude;
    
    // Vértice do topo
    draw_vertex(px, py);
    
    // Vértice da base
    draw_vertex(px, py + profundidade);
}
draw_primitive_end();

// -------------------------------------------------------------
// 2. DESENHAR A LINHA BRANCA MAIS GROSSA NO TOPO
// -------------------------------------------------------------
gpu_set_texfilter(false);

// Desenha várias camadas sobrepostas para criar a espessura desejada
for (var offset = -floor(espessura_linha / 2); offset <= ceil(espessura_linha / 2); offset++) {
    draw_primitive_begin(pr_linestrip);
    draw_set_color(c_white);
    
    for (var i = 0; i < pontos; i++) {
        var px = x + (i * espacamento);
        var py = altura_base + sin(tempo + (i * frequencia)) * amplitude;
        
        draw_vertex(px, py + offset);
    }
    draw_primitive_end();
}