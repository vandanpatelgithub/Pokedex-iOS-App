
import UIKit

class PokeViewCell: UICollectionViewCell {
    
    @IBOutlet weak var pokeImage: UIImageView!
    @IBOutlet weak var pokeLabel: UILabel!
    
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.cornerRadius = 10.0
    }
    
    func configureCell(pokemon: Pokemon) {
        self.pokemon = pokemon
        pokeLabel.text = self.pokemon.name.capitalizedString
        pokeImage.image = UIImage(named: "\(self.pokemon.pokedexID)")
    }
}
