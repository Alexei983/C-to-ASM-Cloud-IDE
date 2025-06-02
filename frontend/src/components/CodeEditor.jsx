import { Box, HStack } from "@chakra-ui/react";
import Editor, { DiffEditor, useMonaco, loader } from "@monaco-editor/react";
import { useRef, useState } from "react";
import { CODE_SNIPPETS } from "../constants";
import LanguageSelected from "./LanguageSelected";
import Output from "./Output";

const CodeEditor = () => {
  const editorRef = useRef();
  const [language, setLanguage] = useState("c");
  const [value, setValue] = useState(CODE_SNIPPETS[language]);

  const onMount = (editor) => {
    editorRef.current = editor;
    editor.focus();
  };

  const onSelect = (language) => {
    setLanguage(language);
    setValue(CODE_SNIPPETS[language]);
  };

  return (
    <Box>
      <HStack spacing={4}>
        <Box w="50%">
          <LanguageSelected language={language} onSelect={onSelect} />
          <Editor
            height="75vh"
            theme="vs-dark"
            language={language}
            value={value}
            onChange={(value) => setValue(value)}
            onMount={onMount}
          />
        </Box>
        <Output language={language} value={value} />
      </HStack>
    </Box>
  );
};

export default CodeEditor;
