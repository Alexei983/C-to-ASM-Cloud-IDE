import {
  Box,
  Button,
  Menu,
  MenuButton,
  MenuItem,
  MenuList,
  Text,
  VStack,
  Spinner,
} from "@chakra-ui/react";
import axios from "axios";
import { useState } from "react";
import { Prism as SyntaxHighlighter } from "react-syntax-highlighter";
import { materialDark } from "react-syntax-highlighter/dist/esm/styles/prism";

const Output = ({ language, value }) => {
  const [asm, setAsm] = useState("");
  const [variable, setVariable] = useState("ASM");
  const [loading, setLoading] = useState(false);

  const onRun = (code) => {
    setLoading(true);
    if (language == "c") {
      if (variable === "ASM") {
        axios
          .post("http://localhost:5000/runcode", {
            code: code,
          })
          .then((response) => {
            setAsm(response.data);
            console.log(response.data);
            setLoading(false);
          })
          .catch((error) => {
            console.error(error);
            setLoading(false);
          });
      } else if (variable === "DISASM") {
        axios
          .post("http://localhost:5000/runcodedisasm", {
            code: code,
          })
          .then((response) => {
            setAsm(response.data);
            console.log(response.data);
            setLoading(false);
          })
          .catch((error) => {
            console.error(error);
            setLoading(false);
          });
      }
    } else if (language == "cpp") {
      if (variable === "ASM") {
        axios
          .post("http://localhost:5000/runcodecpp", {
            code: code,
          })
          .then((response) => {
            setAsm(response.data);
            console.log(response.data);
            setLoading(false);
          })
          .catch((error) => {
            console.error(error);
            setLoading(false);
          });
      } else if (variable === "DISASM") {
        axios
          .post("http://localhost:5000/runcodedisasmcpp", {
            code: code,
          })
          .then((response) => {
            setAsm(response.data);
            console.log(response.data);
            setLoading(false);
          })
          .catch((error) => {
            console.error(error);
            setLoading(false);
          });
      }
    }
  };

  return (
    <>
      {loading ? (
        <VStack colorPalette="teal">
          <Spinner color="colorPalette.600" />
          <Text color="colorPalette.600">Loading...</Text>
        </VStack>
      ) : (
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

          <Menu isLazy>
            <MenuButton mt="-5" ml="3" as={Button}>
              {variable}
            </MenuButton>
            <MenuList>
              <MenuItem onClick={() => setVariable("ASM")}>ASM</MenuItem>
              <MenuItem onClick={() => setVariable("DISASM")}>DISASM</MenuItem>
            </MenuList>
          </Menu>

          <Box
            height="75vh"
            overflow="auto"
            border="1px solid"
            borderColor="gray.600"
            borderRadius="md"
            bg="gray.800"
          >
            {asm === "" ? (
              ""
            ) : (
              <SyntaxHighlighter
                customStyle={{ fontSize: "14px", lineHeight: "1.4" }}
                language={variable === "ASM" ? "nasm" : "text"}
                style={materialDark}
              >
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
      )}
    </>
  );
};

export default Output;
