import 'package:copypaste/core/failures/failure.dart';

abstract class DatabaseFailure extends Failure {}

class UnknownDatabaseFailure extends DatabaseFailure {}
