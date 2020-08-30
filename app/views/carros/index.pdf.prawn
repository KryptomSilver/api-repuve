require "open-uri"
prawn_document do |pdf|
  imagen = open("http://fiscalia.chihuahua.gob.mx/inicio/wp-content/uploads/2018/LOGOS/repuve.png")
  pdf.image imagen, :at => [0,800], :width => 450
  pdf.move_down 100
  pdf.text 'Lista de carros', :size => 25
  pdf.move_down 30
  items = @carros.collect{|p| [p.id,p.reprobo,p.matricula,p.marca_car,p.modelo_car]}
  id = []
  items.each_with_index do |element, index|
    variable = items[index][1]
    if variable == true
      items[index][1] = "SI"
      id.push(index+1)
    else
      items[index][1] = "NO"
    end
  end
  var = ["id","Reportado","Matricula","Marca","Modelo"]
  items.unshift(var)
  pdf.table(items) do
    id.each do |varai|
      style(row(varai), :background_color => 'ff5a5a')
    end
    style(row(0), :background_color => 'dee2e6')
  end
  pdf.move_down 15
  pdf.text 'Ing. Carlos Antonio Rodríguez García'
  pdf.text 'Ing. Blanca Jazmín Victorino Espinoza'
  pdf.text 'Ing. Abel Romero Ruiz'
  pdf.text 'Ing. Manuel Salvador Vázquez Lara Castellanos'
  
  
end
