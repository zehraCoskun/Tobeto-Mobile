enum TalentItem {
  csharp,
  java,
  c,
  cplusplus,
  python,
  react,
  swift,
  javascript,
  typescript,
  solid,
  oop,
  rust,
  node,
  sql,
  nosql,
  firebase,
  entityframework,
  spring,
  reactredux,
  go,
  kotlin,
  bloc;

  @override
  String toString() {
    switch (this) {
      case TalentItem.csharp:
        return "C#";
      case TalentItem.java:
        return "Java";
      case TalentItem.c:
        return "C";
      case TalentItem.cplusplus:
        return "C++";
      case TalentItem.python:
        return "Python";
      case TalentItem.react:
        return "React";
      case TalentItem.swift:
        return "Swift";
      case TalentItem.javascript:
        return "JavaScript";
      case TalentItem.typescript:
        return "TypeScript";
      case TalentItem.solid:
        return "SOLID";
      case TalentItem.oop:
        return "Object Oriented Programming";
      case TalentItem.rust:
        return "Rust";
      case TalentItem.node:
        return "Node.js";
      case TalentItem.sql:
        return "SQL";
      case TalentItem.nosql:
        return "No SQL";
      case TalentItem.firebase:
        return "Firebase";
      case TalentItem.entityframework:
        return "Entity Framework";
      case TalentItem.spring:
        return "Spring";
      case TalentItem.reactredux:
        return "React Redux";
      case TalentItem.go:
        return "Go";
      case TalentItem.kotlin:
        return "Kotlin";
      case TalentItem.bloc:
        return "Bloc";
    }
  }
}