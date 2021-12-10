class Taxista {
  String sId;
  String name;
  String lastName;
  String email;
  String modeloTaxi;
  String estrellas;

  Taxista({
    this.sId,
    this.name,
    this.lastName,
    this.email,
    this.modeloTaxi,
    this.estrellas,
  });

  Taxista.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    lastName = json['last_name'];
    email = json['email'];
    modeloTaxi = json['modelo_taxi'];
    estrellas = json['estrellas'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['last_name'] = this.lastName;
    data['email'] = this.email;
    data['modelo_taxi'] = this.modeloTaxi;
    data['estrellas'] = this.estrellas;
    return data;
  }
}