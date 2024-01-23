// Buatlah function untuk mengubah suhu dari fahrenheit ke celcius. //
void main() {
  double fahrenheitTemperature = 68.0;
  double celsiusTemperature = fahrenheitToCelsius(fahrenheitTemperature);

  print('Temperature in Fahrenheit: $fahrenheitTemperature °F');
  print('Temperature in Celsius: $celsiusTemperature °C');
}

double fahrenheitToCelsius(double fahrenheit) {
  return (fahrenheit - 32) * 5 / 9;
}
