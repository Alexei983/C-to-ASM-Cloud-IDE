import {
  Box,
  Button,
  Menu,
  MenuButton,
  MenuItem,
  MenuList,
  Text,
  Spinner,
  VStack,
  Flex,
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
    const endpointMap = {
      c: {
        ASM: "runcode",
        DISASM: "runcodedisasm",
      },
      cpp: {
        ASM: "runcodecpp",
        DISASM: "runcodedisasmcpp",
      },
    };

    axios
      .post(`http://localhost:5000/${endpointMap[language][variable]}`, {
        code,
      })
      .then((res) => {
        setAsm(res.data);
        setLoading(false);
      })
      .catch((err) => {
        console.error(err);
        setLoading(false);
      });
  };

  return (
    <Box w="100%" h="100%" m={0} p={0}>
      {loading ? (
        <Flex align="center" justify="center" w="100%" h="100%">
          <VStack>
            <Spinner color="blue.500" />
            <Text>Compiling...</Text>
          </VStack>
        </Flex>
      ) : (
        <Flex direction="column" w="100%" h="100%" m={0} p={0}>
          <Flex
            justify="space-between"
            align="center"
            h="48px"
            px={4}
            borderBottom="1px solid"
            borderColor="gray.300"
          >
            <Text fontSize="md" fontWeight="medium">
              Output
            </Text>
            <Flex gap={2}>
              <Button
                size="sm"
                mb={1}
                colorScheme="blue"
                onClick={() => onRun(value)}
              >
                Compile
              </Button>
              <Menu>
                <MenuButton as={Button} size="sm">
                  {variable}
                </MenuButton>
                <MenuList>
                  <MenuItem onClick={() => setVariable("ASM")}>ASM</MenuItem>
                  <MenuItem onClick={() => setVariable("DISASM")}>
                    DISASM
                  </MenuItem>
                </MenuList>
              </Menu>
            </Flex>
          </Flex>

          <Box flex="1" overflow="auto" bg="gray.900" color="white" m={0} p={4}>
            {asm ? (
              <SyntaxHighlighter
                // language="nasm"
                style={materialDark}
                customStyle={{
                  background: "transparent",
                  margin: 0,
                  padding: 0,
                  fontSize: "14px",
                  lineHeight: "1.4",
                }}
              >
                {asm}
              </SyntaxHighlighter>
            ) : (
              <Text color="gray.500">No output yet</Text>
            )}
          </Box>
        </Flex>
      )}
    </Box>
  );
};

export default Output;
