/// generates the key
/// some hugely inefficient code
String generateKey({
  required String featurePrefix,
  required String modelPrefix,
  required String propertyName,
}) {
  return featurePrefix + "-" + modelPrefix + "-" + propertyName;
}
