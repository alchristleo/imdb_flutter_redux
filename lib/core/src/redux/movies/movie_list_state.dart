import 'package:imdb_flutter_redux/core/src/redux/models/loading.dart';
import 'package:core/src/models/show.dart';
import 'package:core/src/models/show_cache.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';

@immutable
class ShowState {
    ShowState({
        @required this.loadingStatus,
        @required this.dates,
        @required this.selectedDate,
        @required this.shows,
    });

    final LoadingStatus loadingStatus;
    final KtList<DateTime> dates;
    final DateTime selectedDate;
    final KtMap<DateTheaterPair, KtList<Show>> shows;

    factory ShowState.initial() {
        return ShowState(
            loadingStatus: LoadingStatus.idle,
            shows: emptyMap(),
        );
    }

    ShowState copyWith({
        LoadingStatus loadingStatus,
        KtList<DateTime> availableDates,
        DateTime selectedDate,
        KtMap<DateTheaterPair, KtList<Show>> shows,
    }) {
        return ShowState(
        loadingStatus: loadingStatus ?? this.loadingStatus,
        dates: availableDates ?? this.dates,
        selectedDate: selectedDate ?? this.selectedDate,
        shows: shows ?? this.shows,
        );
    }

    @override
    bool operator ==(Object other) =>
        identical(this, other) ||
        other is ShowState &&
            runtimeType == other.runtimeType &&
            loadingStatus == other.loadingStatus &&
            dates == other.dates &&
            selectedDate == other.selectedDate &&
            shows == other.shows;

    @override
    int get hashCode =>
        loadingStatus.hashCode ^
        dates.hashCode ^
        selectedDate.hashCode ^
        shows.hashCode;
}
