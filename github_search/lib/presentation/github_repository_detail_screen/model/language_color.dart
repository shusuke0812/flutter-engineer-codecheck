import 'package:flutter/material.dart';

enum LanguageColor {
  dart,
  swift,
  cpp,
  cn,
  objectiveC,
  javaSctipt,
  typeScript,
  css,
  html,
  java,
  kotlin,
  python,
  ruby,
  go,
  php,
  shell,
  other

  factory LanguageColor.from(String language) {
    switch (language) {
      case 'Dart':
        return LanguageColor.dart;
      case 'Swift':
        return LanguageColor.swift;
      case 'C++':
        return LanguageColor.cpp;
      case 'C#':
        return LanguageColor.cn;
      case 'Objective-C':
        return LanguageColor.objectiveC;
      case 'JavaScript':
        return LanguageColor.javaSctipt;
      case 'TypeScript':
        return LanguageColor.typeScript;
      case 'CSS':
        return LanguageColor.css;
      case 'HTML':
        return LanguageColor.html;
      case 'Java':
        return LanguageColor.java;
      case 'Kotlin':
        return LanguageColor.kotlin;
      case 'Python':
        return LanguageColor.python;
      case 'Ruby':
        return LanguageColor.ruby;
      case 'Go':
        return LanguageColor.go;
      case 'PHP':
        return LanguageColor.php;
      case 'Shell':
        return LanguageColor.shell;
      default:
        return LanguageColor.other;
    }
  }
}

extension LanguageColorExtension on LanguageColor {
  static final colors = {
    LanguageColor.dart: const Color(0xff00b4ab),
    LanguageColor.swift: const Color(0xffffac45),
    LanguageColor.cpp: const Color(0xfff34b7d),
    LanguageColor.cn: const Color(0xff555555),
    LanguageColor.cs: const Color(0xff178600),
    LanguageColor.objectiveC: const Color(0xff438eff),
    LanguageColor.javaSctipt: const Color(0xfff1e05a),
    LanguageColor.typeScript: const Color(0xff2b7489),
    LanguageColor.css: const Color(0xff563d7c),
    LanguageColor.html: const Color(0xffe34c26),
    LanguageColor.java: const Color(0xffb07219),
    LanguageColor.kotlin: const Color(0xfff18e33),
    LanguageColor.python: const Color(0xff3572a5),
    LanguageColor.ruby: const Color(0xff701516),
    LanguageColor.go: const Color(0xff00add8),
    LanguageColor.php: const Color(0xff384d54),
    LanguageColor.shell: const Color(0xff89e051),
    LanguageColor.other: const Color(0xff586069)
  };

  Color get color => colors[this];
}