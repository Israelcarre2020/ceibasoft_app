class PathUri {
  final String context;
  final String service;

  const PathUri({
    required this.context,
    required this.service,
  });

  @override
  String toString() {
    final uri = context + service;
    return uri;
  }
}
