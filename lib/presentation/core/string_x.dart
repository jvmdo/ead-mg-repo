extension CapExtension on String {
  String get inCaps {
    if (this == "host") {
      return '${this[0].toUpperCase()}${substring(1)} (super user)';
    }
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  String get itself {
    if (this == "") {
      return 'Himself';
    }
    return this;
  }

  bool parseBool() {
    return toLowerCase() == 'true';
  }
}
