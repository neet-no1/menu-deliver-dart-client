part of swagger.api;

class CompositionData {
  /* 食品ID */
  int id = null;
  
/* 食品名 */
  String name = null;
  
/* 廃棄率(%) */
  int refuse = null;
  
/* エネルギー(kcal) */
  int energy = null;
  
/* たんぱく質(g) */
  double protein = null;
  
/* 脂質(g) */
  double lipid = null;
  
/* 炭水化物(g) */
  double carbohydrate = null;
  
/* カルシウム(mg) */
  int calcium = null;
  
/* 鉄(mg) */
  double iron = null;
  
/* コレステロール(mg) */
  int cholesterol = null;
  
/* 食物繊維 */
  double dietaryFibers = null;
  
/* 食塩相当量(g) */
  double saltEquivalents = null;
  
  CompositionData();

  @override
  String toString() {
    return 'CompositionData[id=$id, name=$name, refuse=$refuse, energy=$energy, protein=$protein, lipid=$lipid, carbohydrate=$carbohydrate, calcium=$calcium, iron=$iron, cholesterol=$cholesterol, dietaryFibers=$dietaryFibers, saltEquivalents=$saltEquivalents, ]';
  }

  CompositionData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    name =
        json['name']
    ;
    refuse =
        json['refuse']
    ;
    energy =
        json['energy']
    ;
    protein =
        json['protein'] == null ? null : json['protein'].toDouble()
    ;
    lipid =
        json['lipid'] == null ? null : json['lipid'].toDouble()
    ;
    carbohydrate =
        json['carbohydrate'] == null ? null : json['carbohydrate'].toDouble()
    ;
    calcium =
        json['calcium']
    ;
    iron =
        json['iron'] == null ? null : json['iron'].toDouble()
    ;
    cholesterol =
        json['cholesterol']
    ;
    dietaryFibers =
        json['dietaryFibers'] == null ? null : json['dietaryFibers'].toDouble()
    ;
    saltEquivalents =
        json['saltEquivalents'] == null ? null : json['saltEquivalents'].toDouble()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'refuse': refuse,
      'energy': energy,
      'protein': protein,
      'lipid': lipid,
      'carbohydrate': carbohydrate,
      'calcium': calcium,
      'iron': iron,
      'cholesterol': cholesterol,
      'dietaryFibers': dietaryFibers,
      'saltEquivalents': saltEquivalents
     };
  }

  static List<CompositionData> listFromJson(List<dynamic> json) {
    return json == null ? new List<CompositionData>() : json.map((value) => new CompositionData.fromJson(value)).toList();
  }

  static Map<String, CompositionData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CompositionData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CompositionData.fromJson(value));
    }
    return map;
  }
}

