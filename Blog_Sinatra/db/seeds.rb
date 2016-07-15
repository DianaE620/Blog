
tag1 = Tag.create(name: "videojuegos")
tag2 = Tag.create(name: "libros")
tag3 = Tag.create(name: "tecnología")
tag4 = Tag.create(name: "política")
tag5 = Tag.create(name: "salud")
tag6 = Tag.create(name: "cultura")
tag7 = Tag.create(name: "tendencias")

primer_post = Post.create(title: "Como hablar en publico", body: "Para hablar en público se necesita confianza y cretividad. Exito!!")

primer_post.tags << tag1 << tag2 << tag3 << tag4 << tag5

segundo_post = Post.create(title: "8 frases de Alejandro Jodorowsky que ni él mismo entiende", body: "Fuentes cercanas al ameno director de cine nos comentaron que sacará un libro de memorias que contará con más de 457 páginas en blanco pero en las últimas 7 se pondrá una foto de él así como que no se da cuenta acompañadas de una frase que él mismo escribió. Se contempla que para cada frase se tardó alrededor de 6 días en dejarla bien escrita para que se viera así super fashion e inteligente. No cabe duda que los genios están en todos lados y agradecemos nos comparte parte de la suya", author: "Jesus Silva")

segundo_post.tags << tag6 << tag7

tercer_post = Post.create(title: "Peña Nieto anuncia que usará la frase “Ódiame más” como lema de Gobierno", body: "El Presidente está muy preocupado por los altos niveles de desaprobación que tiene el gobierno que encabeza, por lo que asesorado por su amigo Alazraki, ha decidido que no lo quieren porque le tienen envidia, por lo que se ha considerado apropiado que se use el lema Ódiame más, explicó el funcionario de primer nivel, cómo al mismo le gusta autonombrarse. La campaña estará enfocada en aprovechar el odio irracional que existe hacia el Presidente y su gobierno, usando un método mental de proyección psicológica de que si lo odian, es porque lo admiran, según dijo Alazraki, quien tiene la carrera de psicología trunca.", author: "Diana Ortiz")

tercer_post.tags << tag4

cuarto_post = Post.create(title: "Los programadores gobernaran al mundo", body: "En la universidad de harvard se realizo un debate el cual llegó a la conclusión de que los programadores gobernaran al mundo en los próximos años.", author: "Diana Ortiz")

cuarto_post.tags << tag7 << tag4