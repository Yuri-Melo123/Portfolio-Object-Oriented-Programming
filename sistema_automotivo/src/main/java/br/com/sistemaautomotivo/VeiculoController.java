package br.com.sistemaautomotivo;

import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/veiculos")
@CrossOrigin(origins = "*")
public class VeiculoController {

    private final VeiculoRepository veiculoRepository;

    public VeiculoController(VeiculoRepository veiculoRepository) {
        this.veiculoRepository = veiculoRepository;
    }

    @GetMapping
    public List<Veiculo> listar() {
        return veiculoRepository.findAll();
    }

    @PostMapping
    public Veiculo cadastrar(@RequestBody Veiculo veiculo) {
        return veiculoRepository.save(veiculo);
    }

    @DeleteMapping("/{id}")
    public void remover(@PathVariable Long id) {
        veiculoRepository.deleteById(id);
    }

    @PutMapping("/{id}")
    public Veiculo atualizar(@PathVariable Long id, @RequestBody Veiculo veiculo) {
        if (!veiculoRepository.existsById(id)) {
            throw new RuntimeException("Veiculo com ID " + id + " não encontrado.");
        }
        veiculo.setId(id); // garante que o ID esteja correto
        return veiculoRepository.save(veiculo);
    }

}
