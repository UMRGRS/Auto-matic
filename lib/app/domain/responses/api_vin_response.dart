class ApiVinResponse {
  final String? model, make, error, year;

  ApiVinResponse({
    required this.model,
    required this.make,
    required this.year,
    required this.error,
  });
}
