import 'package:copypaste/features/drawing/presentation/bloc/history_manager_bloc/history_manager_bloc.dart';
import 'package:copypaste/features/drawing/presentation/bloc/history_manager_bloc/history_state.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_test/flutter_test.dart';

class MockHistoryState extends Equatable implements HistoryState {
  const MockHistoryState(this.id);
  final int id;

  @override
  List<Object?> get props => [id];
}

void main() {
  group('test canUndo', () {
    test(
      'should return true if there are more histories than 1 and the current index is greater than 1',
      () async {
        // arrange
        const historyManagerState = HistoryManagerState(
          currentIndex: 1,
          stack: [MockHistoryState(0), MockHistoryState(1)],
        );
        // act
        final result = historyManagerState.canUndo;
        // assert
        expect(result, true);
      },
    );

    test(
      'should return false if there is only one history and the current index is zero',
      () async {
        // arrange
        const historyManagerState = HistoryManagerState(
          currentIndex: 0,
          stack: [MockHistoryState(0)],
        );
        // act
        final result = historyManagerState.canUndo;
        // assert
        expect(result, false);
      },
    );

    test(
      'should return false if the current index is null',
      () async {
        // arrange
        const historyManagerState = HistoryManagerState(
          currentIndex: null,
          stack: [MockHistoryState(0), MockHistoryState(1)],
        );
        // act
        final result = historyManagerState.canUndo;
        // assert
        expect(result, false);
      },
    );
  });

  group('test canRedo', () {
    test(
      'should return true if there are more histories than 1 and the current index is less than the length of the stack',
      () async {
        // arrange
        const historyManagerState = HistoryManagerState(
          currentIndex: 0,
          stack: [MockHistoryState(0), MockHistoryState(1)],
        );
        // act
        final result = historyManagerState.canRedo;
        // assert
        expect(result, true);
      },
    );

    test(
      'should return false if there is only one history and the current index is zero',
      () async {
        // arrange
        const historyManagerState = HistoryManagerState(
          currentIndex: 0,
          stack: [MockHistoryState(0)],
        );
        // act
        final result = historyManagerState.canRedo;
        // assert
        expect(result, false);
      },
    );

    test(
      'should return false if the current index is null',
      () async {
        // arrange
        const historyManagerState = HistoryManagerState(
          currentIndex: null,
          stack: [MockHistoryState(0), MockHistoryState(1)],
        );
        // act
        final result = historyManagerState.canRedo;
        // assert
        expect(result, false);
      },
    );

    test(
      'should return false if the current index is the last index',
      () async {
        // arrange
        const historyManagerState = HistoryManagerState(
          currentIndex: 1,
          stack: [MockHistoryState(0), MockHistoryState(1)],
        );
        // act
        final result = historyManagerState.canRedo;
        // assert
        expect(result, false);
      },
    );
  });

  group('test undo', () {
    test(
      'should return the previous history if there are more histories than 1 and the current index is greater than 1',
      () async {
        // arrange
        const historyManagerState = HistoryManagerState(
          currentIndex: 1,
          stack: [MockHistoryState(0), MockHistoryState(1)],
        );
        // act
        final result = historyManagerState.undo();
        // assert
        expect(
          result,
          const HistoryManagerState(
            currentIndex: 0,
            stack: [MockHistoryState(0), MockHistoryState(1)],
          ),
        );
      },
    );

    test(
      'should return the first history if there is only one history and the current index is zero',
      () async {
        // arrange
        const historyManagerState = HistoryManagerState(
          currentIndex: 0,
          stack: [MockHistoryState(0)],
        );
        // act
        final result = historyManagerState.undo();
        // assert
        expect(
          result,
          const HistoryManagerState(
            currentIndex: 0,
            stack: [MockHistoryState(0)],
          ),
        );
      },
    );
  });

  group('test Redo', () {
    test(
      'should return the next history if there are more histories than 1 and the current index is less than the length of the stack',
      () async {
        // arrange
        const historyManagerState = HistoryManagerState(
          currentIndex: 0,
          stack: [MockHistoryState(0), MockHistoryState(1)],
        );
        // act
        final result = historyManagerState.redo();
        // assert
        expect(
          result,
          const HistoryManagerState(
            currentIndex: 1,
            stack: [MockHistoryState(0), MockHistoryState(1)],
          ),
        );
      },
    );

    test(
      'should return the last history the current index is the last index',
      () async {
        // arrange
        const historyManagerState = HistoryManagerState(
          currentIndex: 1,
          stack: [MockHistoryState(0), MockHistoryState(1)],
        );
        // act
        final result = historyManagerState.redo();
        // assert
        expect(
          result,
          const HistoryManagerState(
            currentIndex: 1,
            stack: [MockHistoryState(0), MockHistoryState(1)],
          ),
        );
      },
    );
  });

  group('test pop', () {
    test(
      'should return the historyManagerState with the last item removed and index updated if there are more histories than 1 and the current index is greater than 0',
      () async {
        // arrange
        const historyManagerState = HistoryManagerState(
          currentIndex: 1,
          stack: [MockHistoryState(0), MockHistoryState(1)],
        );
        // act
        final result = historyManagerState.pop();
        // assert
        expect(
          result,
          const HistoryManagerState(
            currentIndex: 0,
            stack: [MockHistoryState(0)],
          ),
        );
      },
    );

    test('should return the same state if the length of stack is 1 or zero',
        () {
      // arrange
      const historyManagerState = HistoryManagerState(
        currentIndex: 0,
        stack: [MockHistoryState(0)],
      );
      // act
      final result = historyManagerState.pop();
      // assert
      expect(result, historyManagerState);
    });
  });

  group('test Push', () {
    test(
      'should return the historyManagerState with the new history added and index updated',
      () async {
        // arrange
        const historyManagerState = HistoryManagerState(
          currentIndex: 0,
          stack: [MockHistoryState(0)],
        );
        // act
        final result = historyManagerState.push(const MockHistoryState(1));
        // assert
        expect(
          result,
          const HistoryManagerState(
            currentIndex: 1,
            stack: [MockHistoryState(0), MockHistoryState(1)],
          ),
        );
      },
    );
  });

  group('test popUntil', () {
    test(
      'should pop all the histories after the given index',
      () async {
        // arrange
        const historyManagerState = HistoryManagerState(
          currentIndex: 1,
          stack: [
            MockHistoryState(0),
            MockHistoryState(1),
            MockHistoryState(2)
          ],
        );
        // act
        final result = historyManagerState.popUntil(1);
        // assert
        expect(
          result,
          const HistoryManagerState(
            currentIndex: 1,
            stack: [MockHistoryState(0), MockHistoryState(1)],
          ),
        );
      },
    );
  });

  group('test popUntilCurrent', () {
    test(
      'should pop all histories after the current index',
      () async {
        // arrange
        const historyManagerState = HistoryManagerState(
          currentIndex: 1,
          stack: [
            MockHistoryState(0),
            MockHistoryState(1),
            MockHistoryState(2)
          ],
        );
        // act
        final result = historyManagerState.popUntilCurrent();
        // assert
        expect(
          result,
          const HistoryManagerState(
            currentIndex: 1,
            stack: [MockHistoryState(0), MockHistoryState(1)],
          ),
        );
      },
    );
  });

  group('test addNewState', () {
    test(
      'should return the historyManagerState with the new history added and index updated',
      () async {
        // arrange
        const historyManagerState = HistoryManagerState(
          currentIndex: 0,
          stack: [MockHistoryState(0)],
        );
        // act
        final result =
            historyManagerState.addNewState(const MockHistoryState(1));
        // assert
        expect(
          result,
          const HistoryManagerState(
            currentIndex: 1,
            stack: [MockHistoryState(0), MockHistoryState(1)],
          ),
        );
      },
    );

    test(
      'should return the historyManagerState with the new history added and index updated, while also removing all the trailing histories',
      () async {
        // arrange
        const historyManagerState = HistoryManagerState(
          currentIndex: 1,
          stack: [
            MockHistoryState(0),
            MockHistoryState(1),
            MockHistoryState(2)
          ],
        );
        // act
        final result =
            historyManagerState.addNewState(const MockHistoryState(3));
        // assert
        expect(
          result,
          const HistoryManagerState(
            currentIndex: 2,
            stack: [
              MockHistoryState(0),
              MockHistoryState(1),
              MockHistoryState(3)
            ],
          ),
        );
      },
    );
  });
}
