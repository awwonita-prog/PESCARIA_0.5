if (fishing) {
    // 1. Verificação de segurança (Se o peixe sumiu do nada, reseta o estado)
    if (!instance_exists(current_fish)) {
        fishing = false;
        current_fish = noone;
        exit;
    }

    // 2. Lógica da Barra (Decaimento e Cliques)
    fishing_bar -= current_fish.difficulty_decay;

    if (mouse_check_button_pressed(mb_left)) {
        fishing_bar += current_fish.difficulty_gain;
    }

    // Mantém a barra dentro do limite
    fishing_bar = clamp(fishing_bar, 0, bar_max);

    // 3. Verificação dos Estados Finais (Vitória ou Derrota)
    if (fishing_bar >= bar_max) {
        
        // --- VITÓRIA: O PEIXE MORRE AQUI ---
        instance_destroy(current_fish); // Aqui você dá a ordem de morte!
        
        // Reseta as variáveis do controlador
        fishing = false;
        current_fish = noone;
        
    } else if (fishing_bar <= 0) {
        
        // --- DERROTA: O PEIXE ESCAPOU ---
        with (current_fish) {
            being_caught = false;
            fish_init_movement(); 
        }
        
        fishing = false;
        current_fish = noone;
    }
}
