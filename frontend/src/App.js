import React from "react";
import { Box } from "@chakra-ui/react";
import CodeEditor from "./components/CodeEditor";
import "./App.css";
import Header from "./components/Header";

function App() {
  return (
    <>
      <Box w="100vw" h="100vh" m={0} p={0} overflow="hidden">
        <Header />
        <CodeEditor />
      </Box>
    </>
  );
}

export default App;
