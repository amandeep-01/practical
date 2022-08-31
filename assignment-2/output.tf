output "out-1"{
    value=[for y in var.var1:y]
}
output "out-2"{
    value={ for x,y in var.var2:x=>y}
}