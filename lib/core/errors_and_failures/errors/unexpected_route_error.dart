class UnexpectedRouteError extends Error {
  String? route;
  UnexpectedRouteError(this.route);
}
