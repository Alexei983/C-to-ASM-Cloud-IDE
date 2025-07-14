import { Box, Flex, Heading, Spacer, Button } from "@chakra-ui/react";

const Header = () => {
  return (
    <Box
      bg="gray.900"
      px={8}
      py={3}
      borderBottom="1px solid"
      borderColor="gray.700"
      boxShadow="sm"
    >
      <Flex align="center" gap={4}>
        <Heading
          size="md"
          color="white"
          fontWeight="semibold"
          textTransform="uppercase"
          letterSpacing="wide"
        >
          CodeCompiler
        </Heading>

        <Spacer />

        <Button
          as="a"
          href="#"
          target="_blank"
          variant="ghost"
          size="md"
          color="gray.200"
          fontWeight="medium"
          px={5}
          _hover={{
            color: "white",
            bg: "gray.800",
          }}
          _active={{
            bg: "gray.700",
          }}
        >
          Docs
        </Button>
      </Flex>
    </Box>
  );
};

export default Header;
