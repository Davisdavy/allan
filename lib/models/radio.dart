import 'package:flutter/foundation.dart';

class MyRadio {
  final int id;
  final int order;
  final String name;
  final String tagline;
  final String color;
  final String desc;
  final String url;
  final String category;
  final String icon;
  final String image;
  final String lang;

  //list of radios

//<editor-fold desc="Data Methods" defaultstate="collapsed">

  const MyRadio({
    this.id,
    this.order,
    this.name,
    this.tagline,
    this.color,
    this.desc,
    this.url,
    this.category,
    this.icon,
    this.image,
    this.lang,
  });

  MyRadio copyWith({
    int id,
    int order,
    String name,
    String tagline,
    String color,
    String desc,
    String url,
    String category,
    String icon,
    String image,
    String lang,
  }) {
    if ((id == null || identical(id, this.id)) &&
        (order == null || identical(order, this.order)) &&
        (name == null || identical(name, this.name)) &&
        (tagline == null || identical(tagline, this.tagline)) &&
        (color == null || identical(color, this.color)) &&
        (desc == null || identical(desc, this.desc)) &&
        (url == null || identical(url, this.url)) &&
        (category == null || identical(category, this.category)) &&
        (icon == null || identical(icon, this.icon)) &&
        (image == null || identical(image, this.image)) &&
        (lang == null || identical(lang, this.lang))) {
      return this;
    }

    return new MyRadio(
      id: id ?? this.id,
      order: order ?? this.order,
      name: name ?? this.name,
      tagline: tagline ?? this.tagline,
      color: color ?? this.color,
      desc: desc ?? this.desc,
      url: url ?? this.url,
      category: category ?? this.category,
      icon: icon ?? this.icon,
      image: image ?? this.image,
      lang: lang ?? this.lang,
    );
  }

  @override
  String toString() {
    return 'Radio{id: $id, order: $order, name: $name, tagline: $tagline, color: $color, desc: $desc, url: $url, category: $category, icon: $icon, image: $image, lang: $lang}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MyRadio &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          order == other.order &&
          name == other.name &&
          tagline == other.tagline &&
          color == other.color &&
          desc == other.desc &&
          url == other.url &&
          category == other.category &&
          icon == other.icon &&
          image == other.image &&
          lang == other.lang);

  @override
  int get hashCode =>
      id.hashCode ^
      order.hashCode ^
      name.hashCode ^
      tagline.hashCode ^
      color.hashCode ^
      desc.hashCode ^
      url.hashCode ^
      category.hashCode ^
      icon.hashCode ^
      image.hashCode ^
      lang.hashCode;

  factory MyRadio.fromMap(Map<String, dynamic> map) {
    return new MyRadio(
      id: map['id'] as int,
      order: map['order'] as int,
      name: map['name'] as String,
      tagline: map['tagline'] as String,
      color: map['color'] as String,
      desc: map['desc'] as String,
      url: map['url'] as String,
      category: map['category'] as String,
      icon: map['icon'] as String,
      image: map['image'] as String,
      lang: map['lang'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'id': this.id,
      'order': this.order,
      'name': this.name,
      'tagline': this.tagline,
      'color': this.color,
      'desc': this.desc,
      'url': this.url,
      'category': this.category,
      'icon': this.icon,
      'image': this.image,
      'lang': this.lang,
    } as Map<String, dynamic>;
  }

//</editor-fold>

}
class MyRadioList{
  final List<MyRadio> radio;

//<editor-fold desc="Data Methods" defaultstate="collapsed">

  const MyRadioList({
    @required this.radio,
  });

  MyRadioList copyWith({
    List<MyRadio> radio,
  }) {
    if ((radio == null || identical(radio, this.radio))) {
      return this;
    }

    return new MyRadioList(
      radio: radio ?? this.radio,
    );
  }

  @override
  String toString() {
    return 'MyRadioList{radio: $radio}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MyRadioList &&
          runtimeType == other.runtimeType &&
          radio == other.radio);

  @override
  int get hashCode => radio.hashCode;

  factory MyRadioList.fromMap(Map<String, dynamic> map) {
    return new MyRadioList(
      radio: map['radio'] as List<MyRadio>,
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'radio': this.radio,
    } as Map<String, dynamic>;
  }

//</editor-fold>

}