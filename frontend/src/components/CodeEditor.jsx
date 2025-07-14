import { Box, HStack, Flex } from "@chakra-ui/react";
import Editor from "@monaco-editor/react";
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
    <Box w="100vw" h="100vh" overflow="hidden" m={0} p={0}>
      <HStack w="100%" h="100%" spacing={0}>
        <Box w="50%" h="100%" borderRight="1px solid #ccc">
          <Flex direction="column" h="100%">
            <Box
              h="48px"
              px={4}
              borderBottom="1px solid #ccc"
              display="flex"
              alignItems="center"
            >
              <LanguageSelected language={language} onSelect={onSelect} />
            </Box>

            <Box flex="1">
              <Editor
                height="100%"
                theme="vs-dark"
                language={language}
                value={value}
                onChange={(val) => setValue(val)}
                onMount={onMount}
                options={{
                  padding: {
                    top: 20,
                  },
                  fontSize: 14,
                  minimap: { enabled: false },
                }}
              />
            </Box>
          </Flex>
        </Box>

        <Box w="50%" h="100%">
          <Output language={language} value={value} />
        </Box>
      </HStack>
    </Box>
  );
};

export default CodeEditor;
