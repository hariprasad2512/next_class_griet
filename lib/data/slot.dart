class Slot {
  final int UG;
  final String eventName;
  final String startTime;
  final String endTime;
  final List<int> recurrenceDays;
  final String roomNumber;
  final bool enrolled;

  Slot({
    required this.UG,
    required this.eventName,
    required this.startTime,
    required this.endTime,
    required this.recurrenceDays,
    required this.roomNumber,
    required this.enrolled,
  });

  factory Slot.fromJson(Map<String, dynamic> json) {
    return Slot(
      UG: int.parse(json['UG']),
      eventName: json['eventName'],
      startTime: json['startTime'],
      endTime: json['endTime'],
      recurrenceDays: List<int>.from(json['recurrenceDays']),
      roomNumber: json['roomNumber'],
      enrolled: json['enrolled'],
    );
  }
}
