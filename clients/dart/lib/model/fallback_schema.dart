part of openapi.api;

class FallbackSchema {
  
  AllSchema all = null;
  
  IpfSchema ipf = null;
  
  LacfSchema lacf = null;
  
  ScfSchema scf = null;
  FallbackSchema();

  @override
  String toString() {
    return 'FallbackSchema[all=$all, ipf=$ipf, lacf=$lacf, scf=$scf, ]';
  }

  FallbackSchema.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    all = new AllSchema.fromJson(json['all']);
    ipf = new IpfSchema.fromJson(json['ipf']);
    lacf = new LacfSchema.fromJson(json['lacf']);
    scf = new ScfSchema.fromJson(json['scf']);
  }

  Map<String, dynamic> toJson() {
    return {
      'all': all,
      'ipf': ipf,
      'lacf': lacf,
      'scf': scf
    };
  }

  static List<FallbackSchema> listFromJson(List<dynamic> json) {
    return json == null ? new List<FallbackSchema>() : json.map((value) => new FallbackSchema.fromJson(value)).toList();
  }

  static Map<String, FallbackSchema> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, FallbackSchema>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new FallbackSchema.fromJson(value));
    }
    return map;
  }
}

