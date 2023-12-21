enum CommonLoadingType {
  init('init'),
  loading('loading'),
  loaded('loaded'),
  error('error'),
  neverUpdate('neverupdate');

  final String endpoint;

  const CommonLoadingType(this.endpoint);
}
