precio = ARGV[0].to_i
usuarios = ARGV[1].to_i
gastos = ARGV[2].to_i


# ///////////////////calculo utilidades////////////////////////
utilidades = precio*usuarios-gastos
puts "las utilidad es de #{utilidades} pesos"

# /////////////////////impuesto a utilidades///////////////////////////////
if utilidades >= 0
    impuesto = utilidades * 35 / 100
    puts "Tus utilidades fueron positivas por lo tanto se te aplicara un impuesto que asciende a #{impuesto} pesos"
    puts "Con impuesto aplicado tu utilidad es de #{utilidades-impuesto} pesos"
else
    puts "su utilidad fue negativa por lo que no se le aplicara impuesto"
end

