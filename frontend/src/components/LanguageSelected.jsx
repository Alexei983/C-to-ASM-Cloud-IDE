import {
  Menu,
  MenuButton,
  MenuItem,
  MenuList,
  Button,
  Text,
} from "@chakra-ui/react";
import { LANGUAGE_VERSIONS } from "../constants";
import { useState } from "react";

const languages = Object.entries(LANGUAGE_VERSIONS);

const LanguageSelected = ({ language, onSelect }) => {
  const [ver, setVer] = useState(LANGUAGE_VERSIONS[language]);

  return (
    <Menu isLazy>
      <MenuButton
        as={Button}
        size="sm"
        mb={1}
        // variant="outline"
        // fontWeight="normal"
        // // color="gray.700"
        // borderColor="gray.400"
        // _hover={{ bg: "gray.700" }}
        // _active={{ bg: "gray.700" }}
      >
        {language} ({ver})
      </MenuButton>
      <MenuList
      // minW="max-content"
      // px={0}
      // py={0}
      // borderColor="gray.200"
      // boxShadow="sm"
      //bg="gray.700"
      >
        {languages.map(([lang, version]) => (
          <MenuItem
            key={lang}
            onClick={() => {
              onSelect(lang);
              setVer(version);
            }}
            fontSize="sm"
            // fontWeight="normal"
            // color="gray.800"
            bg={lang === language ? "gray.600" : "gray.700"}
            _hover={{ bg: "gray.500" }}
          >
            {lang}
            <Text as="span" color="" fontSize="xs" ml={1}>
              ({version})
            </Text>
          </MenuItem>
        ))}
      </MenuList>
    </Menu>
  );
};

export default LanguageSelected;
