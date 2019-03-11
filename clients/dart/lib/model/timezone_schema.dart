part of openapi.api;

class TimezoneSchema {
  /* Short name of the Timezone */
  String shortName = null;
  /* The offset from UTC (in seconds) for the given location. Considers DST savings. */
  num offsetSec = null;
  /* Represents whether the zone currently observing DST or not */
  String nowInDst = null;
  /* Timezone name of the Location */
  String name = null;
  TimezoneSchema();

  @override
  String toString() {
    return 'TimezoneSchema[shortName=$shortName, offsetSec=$offsetSec, nowInDst=$nowInDst, name=$name, ]';
  }

  TimezoneSchema.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    shortName = json['short_name'];
    offsetSec = json['offset_sec'];
    nowInDst = json['now_in_dst'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'short_name': shortName,
      'offset_sec': offsetSec,
      'now_in_dst': nowInDst,
      'name': name
    };
  }

  static List<TimezoneSchema> listFromJson(List<dynamic> json) {
    return json == null ? new List<TimezoneSchema>() : json.map((value) => new TimezoneSchema.fromJson(value)).toList();
  }

  static Map<String, TimezoneSchema> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, TimezoneSchema>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new TimezoneSchema.fromJson(value));
    }
    return map;
  }
}

