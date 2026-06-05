val l = "Property:0x21401002,status: 0,timestamp:0,zone:0x0,floatValues: [],int32Values: [0],int64Values: [],bytes: [],string:"
val valStr = Regex("(?i)(?:value|floatValues|int32Values)[s]?[:=]\\s*\\[?([\\d.,\\s\\-]+)\\]?").find(l)?.groupValues?.get(1)?.trim() ?: ""
println("MATCH: " + valStr)
