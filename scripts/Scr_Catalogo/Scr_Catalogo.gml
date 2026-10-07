// Script2
global.catalogo_aberto = false;

global.catalogo_peixes = [
    { id_peixe: 1, nome: "Tainha",  sprite: Spr_Fish_1, descoberto: false, info: "Comum em canais." },
    { id_peixe: 2, nome: "Robalo",  sprite: Spr_Fish_1, descoberto: false, info: "Rápido e briguento." },
    { id_peixe: 3, nome: "Tubarão", sprite: Spr_Fish_1, descoberto: false, info: "Muito raro e perigoso." }
];

// Deixe a função aqui, mas não chame ela solta!
function descobrir_peixe(id_pescado) {
    for (var i = 0; i < array_length(global.catalogo_peixes); i++) {
        if (global.catalogo_peixes[i].id_peixe == id_pescado) {
            global.catalogo_peixes[i].descoberto = true;
            break;
        }
    }
}
