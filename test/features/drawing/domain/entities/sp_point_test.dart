import 'package:flutter_test/flutter_test.dart';
import 'package:copypaste/features/drawing/domain/entities/sp_point.dart';

void main() {
  // Write tests for features/drawing/domain/entities/sp_point.dart here.

  test(
    'should return the SPPoint with the offset and pressure given',
    () async {
      // arrange
      const point = SPPoint(offset: Offset(0, 0), pressure: 1);
      // act

      // assert
      expect(point.offset, const Offset(0, 0));
      expect(point.pressure, 1);
    },
  );

  test(
    'should get the correct dx and dy coordinate of the point',
    () async {
      // arrange
      const point = SPPoint(offset: Offset(1, 2), pressure: 1);
      // act
      final dx = point.dx;
      final dy = point.dy;
      // assert
      expect(dx, 1);
      expect(dy, 2);
    },
  );

  test(
    'should get the correct point of the point',
    () async {
      // arrange
      const point = SPPoint(offset: Offset(1, 2), pressure: 1);
      // act
      final point2 = point.point;
      // assert
      expect(point2.x, 1);
      expect(point2.y, 2);
      expect(point2.p, 1);
    },
  );
}
