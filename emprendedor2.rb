precio = ARGV[0].to_i
usuarios = ARGV[1].to_i
gastos = ARGV[2].to_i
usuarios_premium = ARGV[3].to_i
usuarios_gratis = ARGV[4].to_i

# /////////////////variables///////////////////////

def utilidad(p_precio,p_usuarios,p_gastos,p_usuariosp, p_usuariosG)
    precio = p_precio
    usuarios = p_usuarios
    gastos = p_gastos
    usuariosPremium = p_usuariosp
    usuariosGratis = p_usuariosG

    # ////////////////////recaudacion por producto vendido///////////////////////
     recaudacionPorProductoVendido = precio*usuarios
     puts "Todos los productos vendidos suman un total de: #{recaudacionPorProductoVendido} pesos"

    # /////////////////usuarios_premium/////////////////
    valorUsuarioPremium = precio
    valorTotalUsuariosPremium = usuariosPremium * valorUsuarioPremium
    puts "El extra pagado por los usuarios premium suma un total de: #{valorTotalUsuariosPremium} pesos, que se sumara al total"


     #//////////////////////////usuarios gratis//////////////////////////////
     precioUsuarioGratis = precio
     valorTotalUsuariosGratis = precioUsuarioGratis * usuariosGratis
     puts "La suma de los usuarios gratuitos provocara un descuento de #{valorTotalUsuariosGratis} pesos, en el total"

      #     //////////////////////usuarios simples//////////////////////
      recaudacionUsuariosSimples = recaudacionPorProductoVendido + valorTotalUsuariosPremium
    
      puts

     #/////////////////////////////resta de valor de usuarios gratis a la recaudacion total////////////////////
     recaudacionFinal = recaudacionUsuariosSimples - valorTotalUsuariosGratis
     #  /////////////////////////gastos////////////////////////////////
     recaudacionSinGastos = recaudacionFinal-gastos
     puts "Descontando los gastos, la utilidad seria: #{recaudacionSinGastos} pesos"

     if recaudacionSinGastos > 0 
        impuesto = recaudacionSinGastos*35/100
        puts "Como su utilidad fue positiva, se le aplicara un impuesto de #{impuesto} pesos"
        else
        puts "Como su utilidad fue negativa, no se aplicara impuesto"
     end
end

puts utilidad(precio,usuarios,gastos,usuarios_premium,usuarios_gratis)