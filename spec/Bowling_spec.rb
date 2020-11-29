require 'Bowling'


RSpec.describe Partido do
    
    before { @partido = Partido.new()}
    # --- Estas primeras pruebas fueron utiles pero debido a refactorizacion en el codigo, ya no funcionaran correctamente---

   
    it 'debería mostrar "Love - All" si es que nadie anoto' do
       expect(@partido.obtenerScore()).to eq('Love - All')
    end

end