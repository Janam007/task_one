// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

List<UserModel> userModelFromJson(String str) => List<UserModel>.from(json.decode(str).map((x) => UserModel.fromJson(x)));

String userModelToJson(List<UserModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserModel {
  UserModel({
    required this.title,
    required this.fields,
    required this.canDelete,
  });

  String ? title;
  List<Field> ? fields;
  bool ? canDelete;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    title: json["title"],
    fields: List<Field>.from(json["fields"].map((x) => Field.fromJson(x))),
    canDelete: json["canDelete"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "fields": List<dynamic>.from(fields!.map((x) => x.toJson())),
    "canDelete": canDelete,
  };
}

class Field {
  Field({
    required this.name,
    this.span,
    this.text,
    this.group,
    this.label,
    this.value,
    this.append,
    this.events,
    this.prepend,
    required this.disabled,
    required this.isUnique,
    required this.clearable,
    required this.fieldType,
    required this.maxlength,
    required this.isRequired,
    required this.labelWidth,
    required this.defaultValue,
    required this.showPassword,
    required this.showWordLimit,
    required this.addMoreFeature,
    required this.advancedOptions,
    required this.isHelpBlockVisible,
    required this.isPlaceholderVisible,
    required this.isSignature,
    required this.activeText,
    required this.inActiveText,
    required this.remote,
    required this.dataUrl,
    required this.options,
    required this.multiple,
    required this.isFromUrl,
    required this.filterable,
    required this.labelField,
    required this.valueField,
    required this.isHazardous,
  });

  String ?name;
  int ? span;
  String ?text;
  String ?group;
  String ?label;
  dynamic ? value;
  String ?append;
  Events ?events;
  String ?prepend;
  bool ?disabled;
  bool ?isUnique;
  bool ?clearable;
  String ?fieldType;
  int ? maxlength;
  bool ?isRequired;
  int ?labelWidth;
  dynamic defaultValue;
  bool ?showPassword;
  bool ?showWordLimit;
  bool ?addMoreFeature;
  bool ?advancedOptions;
  bool ?isHelpBlockVisible;
  bool ?isPlaceholderVisible;
  bool ?isSignature;
  String ?activeText;
  String ?inActiveText;
  bool ?remote;
  String ?dataUrl;
  List<Option> ?options;
  bool ?multiple;
  bool ?isFromUrl;
  bool ?filterable;
  String ?labelField;
  String ?valueField;
  bool ?isHazardous;

  factory Field.fromJson(Map<String, dynamic> json) => Field(
    name: json["name"],
    span: json["span"],
    text: json["text"],
    group: json["group"],
    label: json["label"],
    value: json["value"],
    append: json["append"] == null ? null : json["append"],
    events: Events.fromJson(json["events"]),
    prepend: json["prepend"] == null ? null : json["prepend"],
    disabled: json["disabled"],
    isUnique: json["isUnique"],
    clearable: json["clearable"] == null ? null : json["clearable"],
    fieldType: json["fieldType"],
    maxlength: json["maxlength"] == null ? null : json["maxlength"],
    isRequired: json["isRequired"] == null ? null : json["isRequired"],
    labelWidth: json["labelWidth"],
    defaultValue: json["defaultValue"],
    showPassword: json["showPassword"] == null ? null : json["showPassword"],
    showWordLimit: json["showWordLimit"] == null ? null : json["showWordLimit"],
    addMoreFeature: json["addMoreFeature"],
    advancedOptions: json["advancedOptions"] == null ? null : json["advancedOptions"],
    isHelpBlockVisible: json["isHelpBlockVisible"] == null ? null : json["isHelpBlockVisible"],
    isPlaceholderVisible: json["isPlaceholderVisible"] == null ? null : json["isPlaceholderVisible"],
    isSignature: json["isSignature"] == null ? null : json["isSignature"],
    activeText: json["activeText"] == null ? null : json["activeText"],
    inActiveText: json["inActiveText"] == null ? null : json["inActiveText"],
    remote: json["remote"] == null ? null : json["remote"],
    dataUrl: json["dataUrl"] == null ? null : json["dataUrl"],
    options: json["options"] == null ? null : List<Option>.from(json["options"].map((x) => Option.fromJson(x))),
    multiple: json["multiple"] == null ? null : json["multiple"],
    isFromUrl: json["isFromUrl"] == null ? null : json["isFromUrl"],
    filterable: json["filterable"] == null ? null : json["filterable"],
    labelField: json["labelField"] == null ? null : json["labelField"],
    valueField: json["valueField"] == null ? null : json["valueField"],
    isHazardous: json["isHazardous"] == null ? null : json["isHazardous"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "span": span,
    "text": text,
    "group": group,
    "label": label,
    "value": value,
    "append": append == null ? null : append,
    "events": events!.toJson(),
    "prepend": prepend == null ? null : prepend,
    "disabled": disabled,
    "isUnique": isUnique,
    "clearable": clearable == null ? null : clearable,
    "fieldType": fieldType,
    "maxlength": maxlength == null ? null : maxlength,
    "isRequired": isRequired == null ? null : isRequired,
    "labelWidth": labelWidth,
    "defaultValue": defaultValue,
    "showPassword": showPassword == null ? null : showPassword,
    "showWordLimit": showWordLimit == null ? null : showWordLimit,
    "addMoreFeature": addMoreFeature,
    "advancedOptions": advancedOptions == null ? null : advancedOptions,
    "isHelpBlockVisible": isHelpBlockVisible == null ? null : isHelpBlockVisible,
    "isPlaceholderVisible": isPlaceholderVisible == null ? null : isPlaceholderVisible,
    "isSignature": isSignature == null ? null : isSignature,
    "activeText": activeText == null ? null : activeText,
    "inActiveText": inActiveText == null ? null : inActiveText,
    "remote": remote == null ? null : remote,
    "dataUrl": dataUrl == null ? null : dataUrl,
    "options": options == null ? null : List<Option>.from(options!.map((x) => x.toJson())),
    "multiple": multiple == null ? null : multiple,
    "isFromUrl": isFromUrl == null ? null : isFromUrl,
    "filterable": filterable == null ? null : filterable,
    "labelField": labelField == null ? null : labelField,
    "valueField": valueField == null ? null : valueField,
    "isHazardous": isHazardous == null ? null : isHazardous,
  };
}

class DefaultValueClass {
  DefaultValueClass();

  factory DefaultValueClass.fromJson(Map<String, dynamic> json) => DefaultValueClass(
  );

  Map<String, dynamic> toJson() => {
  };
}

class Events {
  Events({
    required this.values,
    required this.listens,
    required this.triggers,
  });

  List<dynamic> ? values;
  String ?listens;
  String ?triggers;

  factory Events.fromJson(Map<String, dynamic> json) => Events(
    values: json["values"] == null ? null : List<dynamic>.from(json["values"].map((x) => x)),
    listens: json["listens"],
    triggers: json["triggers"],
  );

  Map<String, dynamic> toJson() => {
    "values": values == null ? null : List<dynamic>.from(values!.map((x) => x)),
    "listens": listens,
    "triggers": triggers,
  };
}

class Option {
  Option({
      this.color,
      this.isFaulty,
      this.optionLabel,
      this.optionValue,
  });

  String ?color;
  bool ?isFaulty;
  String ?optionLabel;
  String ?optionValue;

  factory Option.fromJson(Map<String, dynamic> json) => Option(
    color: json["color"],
    isFaulty: json["is_faulty"],
    optionLabel: json["optionLabel"],
    optionValue: json["optionValue"],
  );

  Map<String, dynamic> toJson() => {
    "color": color,
    "is_faulty": isFaulty,
    "optionLabel": optionLabel,
    "optionValue": optionValue,
  };
}
