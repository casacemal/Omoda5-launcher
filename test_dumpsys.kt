import java.io.File
fun main() {
    val process = Runtime.getRuntime().exec("dumpsys car_service get-property-value")
    val out = process.inputStream.bufferedReader().readText()
    File("dumpsys_raw.txt").writeText(out)
}
