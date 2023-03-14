extension StringNull on String? {
  get nn => (this != null) ? this : '';
}
