require "open-uri"
prawn_document do |pdf|
  imagen = open("http://fiscalia.chihuahua.gob.mx/inicio/wp-content/uploads/2018/LOGOS/repuve.png")
  pdf.image imagen, :at => [0,800], :width => 450
  pdf.move_down 100
  pdf.text 'Lista de carros', :size => 25
  pdf.move_down 30
  items = @carros.collect{|p| [p.matricula,p.marca_car,p.modelo_car,p.clave_car]}
  var = ["Matricula","Marca","Modelo","Clave"]
  items.unshift(var)
  pdf.table(items) do
    style(row(0), :background_color => 'dee2e6')
  end
  pdf.move_down 15
  pdf.text 'Ing. Carlos Antonio Rodríguez García'
  pdf.text 'Ing. Blanca Jazmín Victorino Espinoza'
  pdf.text 'Ing. Abel Romero Ruiz'
  pdf.text 'Ing. Manuel Salvador Vázquez Lara Castellanos'
  
  
end
