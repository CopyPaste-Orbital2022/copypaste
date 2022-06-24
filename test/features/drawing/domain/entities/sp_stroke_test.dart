import 'package:copypaste/features/drawing/domain/entities/sp_point.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/widgets.dart';
import 'package:copypaste/features/drawing/domain/entities/sp_stroke.dart';

void main() {
  // Write tests for features/drawing/domain/entities/sp_stroke.dart here.

  group("test initialization", () {
    test(
      'should return a SPStroke with the given size, color, points, isComplete and cachedBorderPoints',
      () async {
        // arrange
        const size = 1.0;
        const color = Color(0xFF000000);
        const points = [
          SPPoint(offset: Offset(0, 0), pressure: 1),
        ];
        const isComplete = true;
        // act
        const stroke = SPStroke(
          id: 'test-id',
          size: size,
          color: color,
          points: points,
          isComplete: isComplete,
          thinning: 0.5,
          smoothing: 0.5,
          streamline: 0.5,
          taperStart: 5,
          taperEnd: 5,
          capStart: true,
          capEnd: true,
          simulatePressure: true,
        );
        // assert
        expect(stroke.size, size);
        expect(stroke.color, color);
        expect(stroke.points, points);
        expect(stroke.isComplete, isComplete);
        expect(stroke.cachedBorderPoints, null);
      },
    );
    test(
      'should return a SPStroke with the points as [] when the points parameter is not given',
      () async {
        // arrange
        const size = 1.0;
        const color = Color(0xFF000000);
        const isComplete = true;
        // act
        const stroke = SPStroke(
          id: 'test-id',
          size: size,
          color: color,
          points: [],
          isComplete: isComplete,
          thinning: 0.5,
          smoothing: 0.5,
          streamline: 0.5,
          taperStart: 5,
          taperEnd: 5,
          capStart: true,
          capEnd: true,
          simulatePressure: true,
        );
        // assert
        expect(stroke.points, []);
      },
    );

    test(
      'should return a SPStroke with the isComplete as false when the isComplete parameter is not given',
      () async {
        // arrange
        const size = 1.0;
        const color = Color(0xFF000000);
        const points = [
          SPPoint(offset: Offset(0, 0), pressure: 1),
        ];
        // act
        const stroke = SPStroke(
          id: 'test-id',
          size: size,
          color: color,
          points: points,
          thinning: 0.5,
          smoothing: 0.5,
          streamline: 0.5,
          taperStart: 5,
          taperEnd: 5,
          capStart: true,
          capEnd: true,
          simulatePressure: true,
        );
        // assert
        expect(stroke.isComplete, false);
      },
    );

    test(
      'should return a SPStroke with the cachedBorderPoints as null when the cachedBorderPoints parameter is not given',
      () async {
        // arrange
        const size = 1.0;
        const color = Color(0xFF000000);
        const points = [
          SPPoint(offset: Offset(0, 0), pressure: 1),
        ];
        const isComplete = true;
        // act
        const stroke = SPStroke(
          id: 'test-id',
          size: size,
          color: color,
          points: points,
          thinning: 0.5,
          smoothing: 0.5,
          streamline: 0.5,
          taperStart: 5,
          taperEnd: 5,
          capStart: true,
          capEnd: true,
          simulatePressure: true,
        );
        // assert
        expect(stroke.cachedBorderPoints, null);
      },
    );
  });

  group('test SPStrokeX extension', () {
    late SPStroke stroke;

    setUp(() {
      List<SPPoint> points = [];
      for (int i = 0; i < 10; i++) {
        points.add(
          SPPoint(
            offset: Offset(i.toDouble(), i.toDouble()),
            pressure: i / 10,
          ),
        );
      }
      stroke = SPStroke(
        id: 'test-id',
        size: 1.0,
        color: const Color(0xFF000000),
        points: points,
        isComplete: false,
        thinning: 0.5,
        smoothing: 0.5,
        streamline: 0.5,
        taperStart: 5,
        taperEnd: 5,
        capStart: true,
        capEnd: true,
        simulatePressure: true,
      );
    });

    group('test addPoint', () {
      test(
        'should return a new SPPoint instance with the given point added',
        () async {
          // arrange
          const point = SPPoint(
            offset: Offset(0, 0),
            pressure: 1,
          );
          // act
          final newStroke = stroke.addPoint(point);
          // assert
          expect(newStroke.points.length, 11);
          expect(newStroke.points.last, point);
        },
      );
    });

    group('test finish', () {
      test(
        'should return a new SPStroke instance with the isComplete set to true',
        () async {
          // arrange
          expect(stroke.cachedBorderPoints == null, true);
          // act
          final newStroke = stroke.finish();
          // assert
          expect(newStroke.isComplete, true);
          expect(newStroke.cachedBorderPoints != null, true);
        },
      );
    });
  });
}
