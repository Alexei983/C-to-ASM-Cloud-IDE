export const LANGUAGE_VERSIONS = {
  javascript: "18.15.0",
  c: "12.2.0",
  // typescript: "5.0.3",
  // python: "3.10.0",
  // java: "15.0.2",
  // csharp: "6.12.0",
  // php: "8.2.3",
};

export const CODE_SNIPPETS = {
  javascript: `\nfunction greet(name) {\n\tconsole.log("Hello, " + name + "!");\n}\n\ngreet("Alexei");\n`,
  c: '#include <stdio.h>\n\nvoid greet(const char *name) {\n\tprintf("Hello, %s!\\n", name);\n}\n\nint main() {\n\tgreet("Alexei");\n\treturn 0;\n}',
  // typescript: `\ntype Params = {\n\tname: string;\n}\n\nfunction greet(data: Params) {\n\tconsole.log("Hello, " + data.name + "!");\n}\n\ngreet({ name: "Alex" });\n`,
  // python: `\ndef greet(name):\n\tprint("Hello, " + name + "!")\n\ngreet("Alex")\n`,
  // java: `\npublic class HelloWorld {\n\tpublic static void main(String[] args) {\n\t\tSystem.out.println("Hello World");\n\t}\n}\n`,
  // csharp:
  //   'using System;\n\nnamespace HelloWorld\n{\n\tclass Hello { \n\t\tstatic void Main(string[] args) {\n\t\t\tConsole.WriteLine("Hello World in C#");\n\t\t}\n\t}\n}\n',
  // php: "<?php\n\n$name = 'Alex';\necho $name;\n",
};
