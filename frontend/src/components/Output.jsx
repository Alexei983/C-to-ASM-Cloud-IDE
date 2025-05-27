import { Box, Text, Button } from "@chakra-ui/react";
import axios from "axios";
import { useState } from "react";
import { Prism as SyntaxHighlighter } from "react-syntax-highlighter";
import { materialDark } from "react-syntax-highlighter/dist/esm/styles/prism";

const Output = ({ value }) => {
  const [asm, setAsm] = useState("");

  const onRun = (code) => {
    axios
      .post("http://localhost:5000/runcode", {
        code: code,
      })
      .then((response) => {
        setAsm(response.data);
        console.log(response.data);
      })
      .catch((error) => {
        console.error(error);
      });
  };

  return (
    <Box w="50%">
      <Text mb={2} fontSize="lg">
        Output
      </Text>
      <Button
        variant="outline"
        colorScheme="green"
        mb={4}
        onClick={() => onRun(value)}
      >
        Run Code
      </Button>
      <Box
        height="75vh"
        overflow="auto"
        border="1px solid"
        borderColor="gray.600"
        borderRadius="md"
        bg="gray.800"
      >
        {asm == "" ? (
          ""
        ) : (
          <SyntaxHighlighter language="nasm" style={materialDark}>
            {asm}
          </SyntaxHighlighter>
          /*
          <pre style={{ fontFamily: 'monospace', fontSize: '0.875rem', whiteSpace: 'pre-wrap' }}>
            {asm}
          </pre>
          */
        )}
      </Box>
    </Box>
  );
};

export default Output;
