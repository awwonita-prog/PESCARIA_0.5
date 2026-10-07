// Configurações da onda
largura_total = room_width; // Ajuste conforme a largura desejada
altura_base = y;            // Posição Y da superfície da água
profundidade = 300;         // Altura do corpo de água (para baixo)

pontos = 40;                 // Quantidade de pontos ao longo da superfície
amplitude = 8;               // Altura máxima do pico da onda
frequencia = 0.7;           // Densidade/largura das ondas
velocidade = 0.05;           // Velocidade de movimento das ondas

tempo = 0;                  // Contador para animar a onda

// AUMENTE ESTE VALOR para deixar a linha mais grossa (ex: 6, 8, 10)
espessura_linha = 3;

surf_agua = -1; // Inicializa a variável da surface
