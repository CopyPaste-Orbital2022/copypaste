enum DrawingTool {
  hand("hand"),
  eraser("eraser"),
  pencil("pencil"),
  highlighter("highlighter");

  const DrawingTool(this.name);
  final String name;

  /// Gets the drawing tool from the name.
  static DrawingTool fromString(String name) {
    return DrawingTool.values.firstWhere((e) => e.name == name);
  }

  /// toString()
  @override
  String toString() => name;
}
