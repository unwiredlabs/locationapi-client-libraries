part of openapi.api;

class CellSchema {
  /* the Location Area Code of your operator’s network. */
  int lac = null;
  /* Cell ID */
  int cid = null;
  
  RadioSchema radio = null;
  /* \"Mobile Country Code of your operator’s network represented by an integer (Optional). Range: 0 to 999.\" */
  int mcc = null;
  /* Mobile Network Code of your operator’s network represented by an integer (Optional). Range: 0 to 999. On CDMA, provide the System ID or SID, with range: 1 to 32767. */
  int mnc = null;
  /* Signal Strength (RSSI) */
  int signal = null;
  /* Primary Scrambling Code */
  int psc = null;
  /* Arbitrary Strength Unit */
  int asu = null;
  /* Timing Advance */
  int ta = null;
  CellSchema();

  @override
  String toString() {
    return 'CellSchema[lac=$lac, cid=$cid, radio=$radio, mcc=$mcc, mnc=$mnc, signal=$signal, psc=$psc, asu=$asu, ta=$ta, ]';
  }

  CellSchema.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    lac = json['lac'];
    cid = json['cid'];
    radio = new RadioSchema.fromJson(json['radio']);
    mcc = json['mcc'];
    mnc = json['mnc'];
    signal = json['signal'];
    psc = json['psc'];
    asu = json['asu'];
    ta = json['ta'];
  }

  Map<String, dynamic> toJson() {
    return {
      'lac': lac,
      'cid': cid,
      'radio': radio,
      'mcc': mcc,
      'mnc': mnc,
      'signal': signal,
      'psc': psc,
      'asu': asu,
      'ta': ta
    };
  }

  static List<CellSchema> listFromJson(List<dynamic> json) {
    return json == null ? new List<CellSchema>() : json.map((value) => new CellSchema.fromJson(value)).toList();
  }

  static Map<String, CellSchema> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, CellSchema>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new CellSchema.fromJson(value));
    }
    return map;
  }
}

