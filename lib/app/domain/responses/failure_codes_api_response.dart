class FailureCodesApiResponse {
  final String? definition, error;
  final List<dynamic>? causes;

  FailureCodesApiResponse({
    required this.definition,
    required this.causes,
    required this.error,
  });
}
