/// heat_shield : {"material":"PICA-X","size_meters":3.6,"temp_degrees":3000,"dev_partner":"NASA"}
/// launch_payload_mass : {"kg":6000,"lb":13228}
/// launch_payload_vol : {"cubic_meters":25,"cubic_feet":883}
/// return_payload_mass : {"kg":3000,"lb":6614}
/// return_payload_vol : {"cubic_meters":11,"cubic_feet":388}
/// pressurized_capsule : {"payload_volume":{"cubic_meters":11,"cubic_feet":388}}
/// trunk : {"trunk_volume":{"cubic_meters":14,"cubic_feet":494},"cargo":{"solar_array":2,"unpressurized_cargo":true}}
/// height_w_trunk : {"meters":7.2,"feet":23.6}
/// diameter : {"meters":3.7,"feet":12}
/// first_flight : "2010-12-08"
/// flickr_images : ["https://i.imgur.com/9fWdwNv.jpg","https://live.staticflickr.com/8578/16655995541_078768dea2_b.jpg","https://farm3.staticflickr.com/2815/32761844973_4b55b27d3c_b.jpg","https://farm9.staticflickr.com/8618/16649075267_d18cbb4342_b.jpg"]
/// name : "Dragon 1"
/// type : "capsule"
/// active : true
/// crew_capacity : 0
/// sidewall_angle_deg : 15
/// orbit_duration_yr : 2
/// dry_mass_kg : 4200
/// dry_mass_lb : 9300
/// thrusters : [{"type":"Draco","amount":18,"pods":4,"fuel_1":"nitrogen tetroxide","fuel_2":"monomethylhydrazine","isp":300,"thrust":{"kN":0.4,"lbf":90}}]
/// wikipedia : "https://en.wikipedia.org/wiki/SpaceX_Dragon"
/// description : "Dragon is a reusable spacecraft developed by SpaceX, an American private space transportation company based in Hawthorne, California. Dragon is launched into space by the SpaceX Falcon 9 two-stage-to-orbit launch vehicle. The Dragon spacecraft was originally designed for human travel, but so far has only been used to deliver cargo to the International Space Station (ISS)."
/// id : "5e9d058759b1ff74a7ad5f8f"

class DragonShip {
  DragonShip({
      HeatShield? heatShield, 
      LaunchPayloadMass? launchPayloadMass, 
      LaunchPayloadVol? launchPayloadVol, 
      ReturnPayloadMass? returnPayloadMass, 
      ReturnPayloadVol? returnPayloadVol, 
      PressurizedCapsule? pressurizedCapsule, 
      Trunk? trunk, 
      HeightWTrunk? heightWTrunk, 
      Diameter? diameter, 
      String? firstFlight, 
      List<String>? flickrImages, 
      String? name, 
      String? type, 
      bool? active, 
      num? crewCapacity, 
      num? sidewallAngleDeg, 
      num? orbitDurationYr, 
      num? dryMassKg, 
      num? dryMassLb, 
      List<Thrusters>? thrusters, 
      String? wikipedia, 
      String? description, 
      String? id,}){
    _heatShield = heatShield;
    _launchPayloadMass = launchPayloadMass;
    _launchPayloadVol = launchPayloadVol;
    _returnPayloadMass = returnPayloadMass;
    _returnPayloadVol = returnPayloadVol;
    _pressurizedCapsule = pressurizedCapsule;
    _trunk = trunk;
    _heightWTrunk = heightWTrunk;
    _diameter = diameter;
    _firstFlight = firstFlight;
    _flickrImages = flickrImages;
    _name = name;
    _type = type;
    _active = active;
    _crewCapacity = crewCapacity;
    _sidewallAngleDeg = sidewallAngleDeg;
    _orbitDurationYr = orbitDurationYr;
    _dryMassKg = dryMassKg;
    _dryMassLb = dryMassLb;
    _thrusters = thrusters;
    _wikipedia = wikipedia;
    _description = description;
    _id = id;
}

  DragonShip.fromJson(dynamic json) {
    _heatShield = json['heat_shield'] != null ? HeatShield.fromJson(json['heat_shield']) : null;
    _launchPayloadMass = json['launch_payload_mass'] != null ? LaunchPayloadMass.fromJson(json['launch_payload_mass']) : null;
    _launchPayloadVol = json['launch_payload_vol'] != null ? LaunchPayloadVol.fromJson(json['launch_payload_vol']) : null;
    _returnPayloadMass = json['return_payload_mass'] != null ? ReturnPayloadMass.fromJson(json['return_payload_mass']) : null;
    _returnPayloadVol = json['return_payload_vol'] != null ? ReturnPayloadVol.fromJson(json['return_payload_vol']) : null;
    _pressurizedCapsule = json['pressurized_capsule'] != null ? PressurizedCapsule.fromJson(json['pressurized_capsule']) : null;
    _trunk = json['trunk'] != null ? Trunk.fromJson(json['trunk']) : null;
    _heightWTrunk = json['height_w_trunk'] != null ? HeightWTrunk.fromJson(json['height_w_trunk']) : null;
    _diameter = json['diameter'] != null ? Diameter.fromJson(json['diameter']) : null;
    _firstFlight = json['first_flight'];
    _flickrImages = json['flickr_images'] != null ? json['flickr_images'].cast<String>() : [];
    _name = json['name'];
    _type = json['type'];
    _active = json['active'];
    _crewCapacity = json['crew_capacity'];
    _sidewallAngleDeg = json['sidewall_angle_deg'];
    _orbitDurationYr = json['orbit_duration_yr'];
    _dryMassKg = json['dry_mass_kg'];
    _dryMassLb = json['dry_mass_lb'];
    if (json['thrusters'] != null) {
      _thrusters = [];
      json['thrusters'].forEach((v) {
        _thrusters?.add(Thrusters.fromJson(v));
      });
    }
    _wikipedia = json['wikipedia'];
    _description = json['description'];
    _id = json['id'];
  }
  HeatShield? _heatShield;
  LaunchPayloadMass? _launchPayloadMass;
  LaunchPayloadVol? _launchPayloadVol;
  ReturnPayloadMass? _returnPayloadMass;
  ReturnPayloadVol? _returnPayloadVol;
  PressurizedCapsule? _pressurizedCapsule;
  Trunk? _trunk;
  HeightWTrunk? _heightWTrunk;
  Diameter? _diameter;
  String? _firstFlight;
  List<String>? _flickrImages;
  String? _name;
  String? _type;
  bool? _active;
  num? _crewCapacity;
  num? _sidewallAngleDeg;
  num? _orbitDurationYr;
  num? _dryMassKg;
  num? _dryMassLb;
  List<Thrusters>? _thrusters;
  String? _wikipedia;
  String? _description;
  String? _id;
DragonShip copyWith({  HeatShield? heatShield,
  LaunchPayloadMass? launchPayloadMass,
  LaunchPayloadVol? launchPayloadVol,
  ReturnPayloadMass? returnPayloadMass,
  ReturnPayloadVol? returnPayloadVol,
  PressurizedCapsule? pressurizedCapsule,
  Trunk? trunk,
  HeightWTrunk? heightWTrunk,
  Diameter? diameter,
  String? firstFlight,
  List<String>? flickrImages,
  String? name,
  String? type,
  bool? active,
  num? crewCapacity,
  num? sidewallAngleDeg,
  num? orbitDurationYr,
  num? dryMassKg,
  num? dryMassLb,
  List<Thrusters>? thrusters,
  String? wikipedia,
  String? description,
  String? id,
}) => DragonShip(  heatShield: heatShield ?? _heatShield,
  launchPayloadMass: launchPayloadMass ?? _launchPayloadMass,
  launchPayloadVol: launchPayloadVol ?? _launchPayloadVol,
  returnPayloadMass: returnPayloadMass ?? _returnPayloadMass,
  returnPayloadVol: returnPayloadVol ?? _returnPayloadVol,
  pressurizedCapsule: pressurizedCapsule ?? _pressurizedCapsule,
  trunk: trunk ?? _trunk,
  heightWTrunk: heightWTrunk ?? _heightWTrunk,
  diameter: diameter ?? _diameter,
  firstFlight: firstFlight ?? _firstFlight,
  flickrImages: flickrImages ?? _flickrImages,
  name: name ?? _name,
  type: type ?? _type,
  active: active ?? _active,
  crewCapacity: crewCapacity ?? _crewCapacity,
  sidewallAngleDeg: sidewallAngleDeg ?? _sidewallAngleDeg,
  orbitDurationYr: orbitDurationYr ?? _orbitDurationYr,
  dryMassKg: dryMassKg ?? _dryMassKg,
  dryMassLb: dryMassLb ?? _dryMassLb,
  thrusters: thrusters ?? _thrusters,
  wikipedia: wikipedia ?? _wikipedia,
  description: description ?? _description,
  id: id ?? _id,
);
  HeatShield? get heatShield => _heatShield;
  LaunchPayloadMass? get launchPayloadMass => _launchPayloadMass;
  LaunchPayloadVol? get launchPayloadVol => _launchPayloadVol;
  ReturnPayloadMass? get returnPayloadMass => _returnPayloadMass;
  ReturnPayloadVol? get returnPayloadVol => _returnPayloadVol;
  PressurizedCapsule? get pressurizedCapsule => _pressurizedCapsule;
  Trunk? get trunk => _trunk;
  HeightWTrunk? get heightWTrunk => _heightWTrunk;
  Diameter? get diameter => _diameter;
  String? get firstFlight => _firstFlight;
  List<String>? get flickrImages => _flickrImages;
  String? get name => _name;
  String? get type => _type;
  bool? get active => _active;
  num? get crewCapacity => _crewCapacity;
  num? get sidewallAngleDeg => _sidewallAngleDeg;
  num? get orbitDurationYr => _orbitDurationYr;
  num? get dryMassKg => _dryMassKg;
  num? get dryMassLb => _dryMassLb;
  List<Thrusters>? get thrusters => _thrusters;
  String? get wikipedia => _wikipedia;
  String? get description => _description;
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_heatShield != null) {
      map['heat_shield'] = _heatShield?.toJson();
    }
    if (_launchPayloadMass != null) {
      map['launch_payload_mass'] = _launchPayloadMass?.toJson();
    }
    if (_launchPayloadVol != null) {
      map['launch_payload_vol'] = _launchPayloadVol?.toJson();
    }
    if (_returnPayloadMass != null) {
      map['return_payload_mass'] = _returnPayloadMass?.toJson();
    }
    if (_returnPayloadVol != null) {
      map['return_payload_vol'] = _returnPayloadVol?.toJson();
    }
    if (_pressurizedCapsule != null) {
      map['pressurized_capsule'] = _pressurizedCapsule?.toJson();
    }
    if (_trunk != null) {
      map['trunk'] = _trunk?.toJson();
    }
    if (_heightWTrunk != null) {
      map['height_w_trunk'] = _heightWTrunk?.toJson();
    }
    if (_diameter != null) {
      map['diameter'] = _diameter?.toJson();
    }
    map['first_flight'] = _firstFlight;
    map['flickr_images'] = _flickrImages;
    map['name'] = _name;
    map['type'] = _type;
    map['active'] = _active;
    map['crew_capacity'] = _crewCapacity;
    map['sidewall_angle_deg'] = _sidewallAngleDeg;
    map['orbit_duration_yr'] = _orbitDurationYr;
    map['dry_mass_kg'] = _dryMassKg;
    map['dry_mass_lb'] = _dryMassLb;
    if (_thrusters != null) {
      map['thrusters'] = _thrusters?.map((v) => v.toJson()).toList();
    }
    map['wikipedia'] = _wikipedia;
    map['description'] = _description;
    map['id'] = _id;
    return map;
  }

}

/// type : "Draco"
/// amount : 18
/// pods : 4
/// fuel_1 : "nitrogen tetroxide"
/// fuel_2 : "monomethylhydrazine"
/// isp : 300
/// thrust : {"kN":0.4,"lbf":90}

class Thrusters {
  Thrusters({
      String? type, 
      num? amount, 
      num? pods, 
      String? fuel1, 
      String? fuel2, 
      num? isp, 
      Thrust? thrust,}){
    _type = type;
    _amount = amount;
    _pods = pods;
    _fuel1 = fuel1;
    _fuel2 = fuel2;
    _isp = isp;
    _thrust = thrust;
}

  Thrusters.fromJson(dynamic json) {
    _type = json['type'];
    _amount = json['amount'];
    _pods = json['pods'];
    _fuel1 = json['fuel_1'];
    _fuel2 = json['fuel_2'];
    _isp = json['isp'];
    _thrust = json['thrust'] != null ? Thrust.fromJson(json['thrust']) : null;
  }
  String? _type;
  num? _amount;
  num? _pods;
  String? _fuel1;
  String? _fuel2;
  num? _isp;
  Thrust? _thrust;
Thrusters copyWith({  String? type,
  num? amount,
  num? pods,
  String? fuel1,
  String? fuel2,
  num? isp,
  Thrust? thrust,
}) => Thrusters(  type: type ?? _type,
  amount: amount ?? _amount,
  pods: pods ?? _pods,
  fuel1: fuel1 ?? _fuel1,
  fuel2: fuel2 ?? _fuel2,
  isp: isp ?? _isp,
  thrust: thrust ?? _thrust,
);
  String? get type => _type;
  num? get amount => _amount;
  num? get pods => _pods;
  String? get fuel1 => _fuel1;
  String? get fuel2 => _fuel2;
  num? get isp => _isp;
  Thrust? get thrust => _thrust;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = _type;
    map['amount'] = _amount;
    map['pods'] = _pods;
    map['fuel_1'] = _fuel1;
    map['fuel_2'] = _fuel2;
    map['isp'] = _isp;
    if (_thrust != null) {
      map['thrust'] = _thrust?.toJson();
    }
    return map;
  }

}

/// kN : 0.4
/// lbf : 90

class Thrust {
  Thrust({
      num? kN, 
      num? lbf,}){
    _kN = kN;
    _lbf = lbf;
}

  Thrust.fromJson(dynamic json) {
    _kN = json['kN'];
    _lbf = json['lbf'];
  }
  num? _kN;
  num? _lbf;
Thrust copyWith({  num? kN,
  num? lbf,
}) => Thrust(  kN: kN ?? _kN,
  lbf: lbf ?? _lbf,
);
  num? get kN => _kN;
  num? get lbf => _lbf;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kN'] = _kN;
    map['lbf'] = _lbf;
    return map;
  }

}

/// meters : 3.7
/// feet : 12

class Diameter {
  Diameter({
      num? meters, 
      num? feet,}){
    _meters = meters;
    _feet = feet;
}

  Diameter.fromJson(dynamic json) {
    _meters = json['meters'];
    _feet = json['feet'];
  }
  num? _meters;
  num? _feet;
Diameter copyWith({  num? meters,
  num? feet,
}) => Diameter(  meters: meters ?? _meters,
  feet: feet ?? _feet,
);
  num? get meters => _meters;
  num? get feet => _feet;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['meters'] = _meters;
    map['feet'] = _feet;
    return map;
  }

}

/// meters : 7.2
/// feet : 23.6

class HeightWTrunk {
  HeightWTrunk({
      num? meters, 
      num? feet,}){
    _meters = meters;
    _feet = feet;
}

  HeightWTrunk.fromJson(dynamic json) {
    _meters = json['meters'];
    _feet = json['feet'];
  }
  num? _meters;
  num? _feet;
HeightWTrunk copyWith({  num? meters,
  num? feet,
}) => HeightWTrunk(  meters: meters ?? _meters,
  feet: feet ?? _feet,
);
  num? get meters => _meters;
  num? get feet => _feet;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['meters'] = _meters;
    map['feet'] = _feet;
    return map;
  }

}

/// trunk_volume : {"cubic_meters":14,"cubic_feet":494}
/// cargo : {"solar_array":2,"unpressurized_cargo":true}

class Trunk {
  Trunk({
      TrunkVolume? trunkVolume, 
      Cargo? cargo,}){
    _trunkVolume = trunkVolume;
    _cargo = cargo;
}

  Trunk.fromJson(dynamic json) {
    _trunkVolume = json['trunk_volume'] != null ? TrunkVolume.fromJson(json['trunk_volume']) : null;
    _cargo = json['cargo'] != null ? Cargo.fromJson(json['cargo']) : null;
  }
  TrunkVolume? _trunkVolume;
  Cargo? _cargo;
Trunk copyWith({  TrunkVolume? trunkVolume,
  Cargo? cargo,
}) => Trunk(  trunkVolume: trunkVolume ?? _trunkVolume,
  cargo: cargo ?? _cargo,
);
  TrunkVolume? get trunkVolume => _trunkVolume;
  Cargo? get cargo => _cargo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_trunkVolume != null) {
      map['trunk_volume'] = _trunkVolume?.toJson();
    }
    if (_cargo != null) {
      map['cargo'] = _cargo?.toJson();
    }
    return map;
  }

}

/// solar_array : 2
/// unpressurized_cargo : true

class Cargo {
  Cargo({
      num? solarArray, 
      bool? unpressurizedCargo,}){
    _solarArray = solarArray;
    _unpressurizedCargo = unpressurizedCargo;
}

  Cargo.fromJson(dynamic json) {
    _solarArray = json['solar_array'];
    _unpressurizedCargo = json['unpressurized_cargo'];
  }
  num? _solarArray;
  bool? _unpressurizedCargo;
Cargo copyWith({  num? solarArray,
  bool? unpressurizedCargo,
}) => Cargo(  solarArray: solarArray ?? _solarArray,
  unpressurizedCargo: unpressurizedCargo ?? _unpressurizedCargo,
);
  num? get solarArray => _solarArray;
  bool? get unpressurizedCargo => _unpressurizedCargo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['solar_array'] = _solarArray;
    map['unpressurized_cargo'] = _unpressurizedCargo;
    return map;
  }

}

/// cubic_meters : 14
/// cubic_feet : 494

class TrunkVolume {
  TrunkVolume({
      num? cubicMeters, 
      num? cubicFeet,}){
    _cubicMeters = cubicMeters;
    _cubicFeet = cubicFeet;
}

  TrunkVolume.fromJson(dynamic json) {
    _cubicMeters = json['cubic_meters'];
    _cubicFeet = json['cubic_feet'];
  }
  num? _cubicMeters;
  num? _cubicFeet;
TrunkVolume copyWith({  num? cubicMeters,
  num? cubicFeet,
}) => TrunkVolume(  cubicMeters: cubicMeters ?? _cubicMeters,
  cubicFeet: cubicFeet ?? _cubicFeet,
);
  num? get cubicMeters => _cubicMeters;
  num? get cubicFeet => _cubicFeet;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cubic_meters'] = _cubicMeters;
    map['cubic_feet'] = _cubicFeet;
    return map;
  }

}

/// payload_volume : {"cubic_meters":11,"cubic_feet":388}

class PressurizedCapsule {
  PressurizedCapsule({
      PayloadVolume? payloadVolume,}){
    _payloadVolume = payloadVolume;
}

  PressurizedCapsule.fromJson(dynamic json) {
    _payloadVolume = json['payload_volume'] != null ? PayloadVolume.fromJson(json['payload_volume']) : null;
  }
  PayloadVolume? _payloadVolume;
PressurizedCapsule copyWith({  PayloadVolume? payloadVolume,
}) => PressurizedCapsule(  payloadVolume: payloadVolume ?? _payloadVolume,
);
  PayloadVolume? get payloadVolume => _payloadVolume;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_payloadVolume != null) {
      map['payload_volume'] = _payloadVolume?.toJson();
    }
    return map;
  }

}

/// cubic_meters : 11
/// cubic_feet : 388

class PayloadVolume {
  PayloadVolume({
      num? cubicMeters, 
      num? cubicFeet,}){
    _cubicMeters = cubicMeters;
    _cubicFeet = cubicFeet;
}

  PayloadVolume.fromJson(dynamic json) {
    _cubicMeters = json['cubic_meters'];
    _cubicFeet = json['cubic_feet'];
  }
  num? _cubicMeters;
  num? _cubicFeet;
PayloadVolume copyWith({  num? cubicMeters,
  num? cubicFeet,
}) => PayloadVolume(  cubicMeters: cubicMeters ?? _cubicMeters,
  cubicFeet: cubicFeet ?? _cubicFeet,
);
  num? get cubicMeters => _cubicMeters;
  num? get cubicFeet => _cubicFeet;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cubic_meters'] = _cubicMeters;
    map['cubic_feet'] = _cubicFeet;
    return map;
  }

}

/// cubic_meters : 11
/// cubic_feet : 388

class ReturnPayloadVol {
  ReturnPayloadVol({
      num? cubicMeters, 
      num? cubicFeet,}){
    _cubicMeters = cubicMeters;
    _cubicFeet = cubicFeet;
}

  ReturnPayloadVol.fromJson(dynamic json) {
    _cubicMeters = json['cubic_meters'];
    _cubicFeet = json['cubic_feet'];
  }
  num? _cubicMeters;
  num? _cubicFeet;
ReturnPayloadVol copyWith({  num? cubicMeters,
  num? cubicFeet,
}) => ReturnPayloadVol(  cubicMeters: cubicMeters ?? _cubicMeters,
  cubicFeet: cubicFeet ?? _cubicFeet,
);
  num? get cubicMeters => _cubicMeters;
  num? get cubicFeet => _cubicFeet;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cubic_meters'] = _cubicMeters;
    map['cubic_feet'] = _cubicFeet;
    return map;
  }

}

/// kg : 3000
/// lb : 6614

class ReturnPayloadMass {
  ReturnPayloadMass({
      num? kg, 
      num? lb,}){
    _kg = kg;
    _lb = lb;
}

  ReturnPayloadMass.fromJson(dynamic json) {
    _kg = json['kg'];
    _lb = json['lb'];
  }
  num? _kg;
  num? _lb;
ReturnPayloadMass copyWith({  num? kg,
  num? lb,
}) => ReturnPayloadMass(  kg: kg ?? _kg,
  lb: lb ?? _lb,
);
  num? get kg => _kg;
  num? get lb => _lb;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kg'] = _kg;
    map['lb'] = _lb;
    return map;
  }

}

/// cubic_meters : 25
/// cubic_feet : 883

class LaunchPayloadVol {
  LaunchPayloadVol({
      num? cubicMeters, 
      num? cubicFeet,}){
    _cubicMeters = cubicMeters;
    _cubicFeet = cubicFeet;
}

  LaunchPayloadVol.fromJson(dynamic json) {
    _cubicMeters = json['cubic_meters'];
    _cubicFeet = json['cubic_feet'];
  }
  num? _cubicMeters;
  num? _cubicFeet;
LaunchPayloadVol copyWith({  num? cubicMeters,
  num? cubicFeet,
}) => LaunchPayloadVol(  cubicMeters: cubicMeters ?? _cubicMeters,
  cubicFeet: cubicFeet ?? _cubicFeet,
);
  num? get cubicMeters => _cubicMeters;
  num? get cubicFeet => _cubicFeet;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cubic_meters'] = _cubicMeters;
    map['cubic_feet'] = _cubicFeet;
    return map;
  }

}

/// kg : 6000
/// lb : 13228

class LaunchPayloadMass {
  LaunchPayloadMass({
      num? kg, 
      num? lb,}){
    _kg = kg;
    _lb = lb;
}

  LaunchPayloadMass.fromJson(dynamic json) {
    _kg = json['kg'];
    _lb = json['lb'];
  }
  num? _kg;
  num? _lb;
LaunchPayloadMass copyWith({  num? kg,
  num? lb,
}) => LaunchPayloadMass(  kg: kg ?? _kg,
  lb: lb ?? _lb,
);
  num? get kg => _kg;
  num? get lb => _lb;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kg'] = _kg;
    map['lb'] = _lb;
    return map;
  }

}

/// material : "PICA-X"
/// size_meters : 3.6
/// temp_degrees : 3000
/// dev_partner : "NASA"

class HeatShield {
  HeatShield({
      String? material, 
      num? sizeMeters, 
      num? tempDegrees, 
      String? devPartner,}){
    _material = material;
    _sizeMeters = sizeMeters;
    _tempDegrees = tempDegrees;
    _devPartner = devPartner;
}

  HeatShield.fromJson(dynamic json) {
    _material = json['material'];
    _sizeMeters = json['size_meters'];
    _tempDegrees = json['temp_degrees'];
    _devPartner = json['dev_partner'];
  }
  String? _material;
  num? _sizeMeters;
  num? _tempDegrees;
  String? _devPartner;
HeatShield copyWith({  String? material,
  num? sizeMeters,
  num? tempDegrees,
  String? devPartner,
}) => HeatShield(  material: material ?? _material,
  sizeMeters: sizeMeters ?? _sizeMeters,
  tempDegrees: tempDegrees ?? _tempDegrees,
  devPartner: devPartner ?? _devPartner,
);
  String? get material => _material;
  num? get sizeMeters => _sizeMeters;
  num? get tempDegrees => _tempDegrees;
  String? get devPartner => _devPartner;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['material'] = _material;
    map['size_meters'] = _sizeMeters;
    map['temp_degrees'] = _tempDegrees;
    map['dev_partner'] = _devPartner;
    return map;
  }

}