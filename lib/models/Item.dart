/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Item type in your schema. */
@immutable
class Item extends Model {
  static const classType = const _ItemModelType();
  final String id;
  final String? _Name;
  final double? _Price;
  final String? _Description;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  ItemModelIdentifier get modelIdentifier {
      return ItemModelIdentifier(
        id: id
      );
  }
  
  String? get Name {
    return _Name;
  }
  
  double? get Price {
    return _Price;
  }
  
  String? get Description {
    return _Description;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Item._internal({required this.id, Name, Price, Description, createdAt, updatedAt}): _Name = Name, _Price = Price, _Description = Description, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Item({String? id, String? Name, double? Price, String? Description}) {
    return Item._internal(
      id: id == null ? UUID.getUUID() : id,
      Name: Name,
      Price: Price,
      Description: Description);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Item &&
      id == other.id &&
      _Name == other._Name &&
      _Price == other._Price &&
      _Description == other._Description;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Item {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("Name=" + "$_Name" + ", ");
    buffer.write("Price=" + (_Price != null ? _Price!.toString() : "null") + ", ");
    buffer.write("Description=" + "$_Description" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Item copyWith({String? Name, double? Price, String? Description}) {
    return Item._internal(
      id: id,
      Name: Name ?? this.Name,
      Price: Price ?? this.Price,
      Description: Description ?? this.Description);
  }
  
  Item.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _Name = json['Name'],
      _Price = (json['Price'] as num?)?.toDouble(),
      _Description = json['Description'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'Name': _Name, 'Price': _Price, 'Description': _Description, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'Name': _Name, 'Price': _Price, 'Description': _Description, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<ItemModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<ItemModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField NAME = QueryField(fieldName: "Name");
  static final QueryField PRICE = QueryField(fieldName: "Price");
  static final QueryField DESCRIPTION = QueryField(fieldName: "Description");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Item";
    modelSchemaDefinition.pluralName = "Items";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Item.NAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Item.PRICE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Item.DESCRIPTION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _ItemModelType extends ModelType<Item> {
  const _ItemModelType();
  
  @override
  Item fromJson(Map<String, dynamic> jsonData) {
    return Item.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Item';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Item] in your schema.
 */
@immutable
class ItemModelIdentifier implements ModelIdentifier<Item> {
  final String id;

  /** Create an instance of ItemModelIdentifier using [id] the primary key. */
  const ItemModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'ItemModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is ItemModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}